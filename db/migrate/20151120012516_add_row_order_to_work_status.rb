class AddRowOrderToWorkStatus < ActiveRecord::Migration
  def change
    add_column :work_statuses, :row_order, :integer
  end
end
