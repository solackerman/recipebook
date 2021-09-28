class CreateItemLocations < ActiveRecord::Migration[6.1]
  def change
    create_table :item_locations do |t|
      t.belongs_to :grocery_item, null: false, foreign_key: true
      t.string :store
      t.string :section

      t.timestamps
    end
  end
end
