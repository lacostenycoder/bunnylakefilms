class WorkStatus < ActiveRecord::Base
  has_many :works
  accepts_nested_attributes_for :works
end
