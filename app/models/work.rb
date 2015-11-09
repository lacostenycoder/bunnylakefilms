class Work < ActiveRecord::Base
  include OrderedControl
  include RankedModel

  belongs_to :category
  accepts_nested_attributes_for :category

  ranks :row_order, :with_same => :category_id

  HOST_CODES = {
    1 => {:name => :vimeo,    :label => 'Vimeo'},
    2 => {:name => :you_tube, :label => 'YouTube'},
  }

  REVERSE_HOST_CODES  = Hash[HOST_CODES.map {|k,v| [v[:name], k]}]
  HOST_CODE_LABELS = HOST_CODES.map {|k,v| [v[:label], k]}

  def host
    HOST_CODES[host_id || 1][:label]
  end
end
