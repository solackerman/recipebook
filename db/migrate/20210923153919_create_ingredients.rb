class CreateIngredients < ActiveRecord::Migration[6.1]
  def change
    create_table :ingredients do |t|
      t.belongs_to :grocery_item, null: false, foreign_key: true
      t.belongs_to :step, null: false, foreign_key: true
      t.string :unit
      t.integer :qty, null: false

      t.timestamps
    end
    add_index :ingredients, %i[grocery_item_id step_id], unique: true
  end
end
