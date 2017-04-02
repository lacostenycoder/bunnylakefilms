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

  def get_vimeo_still
    return self.still_code if self.still_code
    return if self.host_id = 2
    self.update_attribute(:still_code, lookup_vimeo)
  end

  def lookup_vimeo
    require 'open-uri'
    begin
      uri = URI.parse('https://vimeo.com/api/oembed.json?url=https%3A//vimeo.com/' + video_code.to_s)
      response = open(uri).read
      hash = JSON.parse(response).to_hash
      p hash
      thumb = hash['thumbnail_url']
      still_code = thumb[(thumb.rindex(/\//)+1)...thumb.index('_')].to_i
    rescue
      still_code = nil
    end
    still_code
  end

  private

  def status_for_docs_only
    docs = Category.find_by(name: 'Docs + Features')
    if self.category == docs && self.work_status_id.nil?
      errors.add(:status, 'status required for documentary')
    elsif self.category != docs
      self.work_status_id = nil # remove status for non-documentary
    end
  end

end
