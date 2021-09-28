class CreateGroceryItems < ActiveRecord::Migration[6.1]
  def change
    create_table :grocery_items do |t|
      t.string :name, null: false
      t.boolean :need
      t.string :unit
      t.integer :qty
      t.string :description

      t.timestamps
    end
    add_index :grocery_items, :need
    add_index :grocery_items, :name, unique: true
  end
end
