class Work < ActiveRecord::Base
  include OrderedControl
  include RankedModel
  validates_uniqueness_of [:title, :video_code]
  validates_presence_of [:title, :video_code, :category_id]
  validate :status_for_docs_only

  belongs_to :category
  belongs_to :work_status
  accepts_nested_attributes_for :category
  accepts_nested_attributes_for :work_status

  after_create :get_vimeo_still

  ranks :row_order, :with_same => :category_id

  scope :psa, -> { where(category_id: 2) }

  HOST_CODES = {
    1 => {:name => :vimeo,    :label => 'Vimeo'},
    2 => {:name => :you_tube, :label => 'YouTube'},
  }

  REVERSE_HOST_CODES  = Hash[HOST_CODES.map {|k,v| [v[:name], k]}]
  HOST_CODE_LABELS = HOST_CODES.map {|k,v| [v[:label], k]}

  def host
    HOST_CODES[host_id || 1][:label]
  end

  private

  def get_vimeo_still
    return if still_code || host_id == 2
    self.update_attribute(:still_code, lookup_vimeo)
  end

  def lookup_vimeo
    retry_count = 3
    faraday = -> do
      begin
        url ||= "https://vimeo.com/api/oembed.json?url=https%3A//vimeo.com/#{video_code}"
        Faraday.get url
      rescue Faraday::Error => err
        fail "All retries are exhausted" if retry_count == 0
        retry_count -= 1
        puts "[#{Time.now}] Oh no, we failed. Retries left: #{retry_count}"
        sleep 1
        retry unless retry_count == 0
      end
    end.call
    return unless faraday.status == 200
    begin
      hash = JSON.parse(faraday.body)
    rescue JSON::ParserError => e
      puts e
    end
    thumb = hash['thumbnail_url']
    self.still_code = thumb[(thumb.rindex(/\//)+1)...thumb.index('_')].to_i
  end

  def status_for_docs_only
    docs = Category.find_by(name: 'Docs + Features')
    if self.category == docs && self.work_status_id.nil?
      errors.add(:status, 'status required for documentary')
    elsif self.category != docs
      self.work_status_id = nil # remove status for non-documentary
    end
  end

end
