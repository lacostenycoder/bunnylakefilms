class AddWorkStatusToWorks < ActiveRecord::Migration
  def change
    add_column :works, :work_status_id, :integer
  end
end
