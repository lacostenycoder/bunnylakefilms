class Category < ActiveRecord::Base
  include RankedModel
  has_many :works, -> { order(:row_order) }, :dependent => :destroy, :inverse_of => :category
  
  ranks :row_order
end
