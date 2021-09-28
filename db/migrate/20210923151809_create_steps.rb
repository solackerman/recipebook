class CreateSteps < ActiveRecord::Migration[6.1]
  def change
    create_table :steps do |t|
      t.belongs_to :recipe, null: false, foreign_key: true
      t.integer :number, null: false, default: 1
      t.text :description
      t.time :timer

      t.timestamps

      t.index %i[recipe_id number], unique: true
    end
  end
end
