class Category < ActiveRecord::Base
  include RankedModel
  has_many :works, -> { order(:row_order) }, :dependent => :destroy, :inverse_of => :category
  accepts_nested_attributes_for :works

  ranks :row_order
end
