class CreateInventoryFoods < ActiveRecord::Migration[7.0]
  def change
    create_table :inventory_foods do |t|
      t.integer :quantity
      t.references :inventoryId, null: false, foreign_key: true
      t.references :foodId, null: false, foreign_key: true

      t.timestamps
    end
  end
end
