class CreateLists < ActiveRecord::Migration[6.1]
  def change
    create_table :lists do |t|
      t.string :name
      t.integer :total_items
      t.boolean :archived

      t.timestamps
    end
  end
end
