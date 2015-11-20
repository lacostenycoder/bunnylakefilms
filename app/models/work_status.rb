class WorkStatus < ActiveRecord::Base
  has_many :works
  accepts_nested_attributes_for :works

  default_scope { order(:row_order) }

end
