class Category < ActiveRecord::Base
  include RankedModel
  has_many :works, :dependent => :destroy, :inverse_of => :category
  accepts_nested_attributes_for :works

  default_scope {order('name ASC')}
  #ranks :row_order
end
