class CreateWorks < ActiveRecord::Migration
  def change
    create_table :works do |t|
      t.string :title
      t.integer :still_code
      t.integer :video_code
      t.text :description
      t.integer :category_id
      t.integer :host_id, limit: 1, default: 1
      t.boolean :mobile
      t.integer :row_order

      t.timestamps
    end

    add_index :works, :row_order

  end
end
