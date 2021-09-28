# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2021_09_23_153919) do

  create_table "grocery_items", force: :cascade do |t|
    t.string "name", null: false
    t.boolean "need"
    t.string "unit"
    t.integer "qty"
    t.string "description"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["name"], name: "index_grocery_items_on_name", unique: true
    t.index ["need"], name: "index_grocery_items_on_need"
  end

  create_table "ingredients", force: :cascade do |t|
    t.integer "grocery_item_id", null: false
    t.integer "step_id", null: false
    t.string "unit"
    t.integer "qty", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["grocery_item_id"], name: "index_ingredients_on_grocery_item_id"
    t.index ["step_id"], name: "index_ingredients_on_step_id"
  end

  create_table "item_locations", force: :cascade do |t|
    t.integer "grocery_item_id", null: false
    t.string "store"
    t.string "section"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["grocery_item_id"], name: "index_item_locations_on_grocery_item_id"
  end

  create_table "recipes", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.integer "num_servings"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "steps", force: :cascade do |t|
    t.integer "recipe_id", null: false
    t.integer "number", default: 1, null: false
    t.text "description"
    t.time "timer"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index "\"recipe\", \"number\"", name: "index_steps_on_recipe_and_number", unique: true
    t.index ["recipe_id"], name: "index_steps_on_recipe_id"
  end

  add_foreign_key "ingredients", "grocery_items"
  add_foreign_key "ingredients", "steps"
  add_foreign_key "item_locations", "grocery_items"
  add_foreign_key "steps", "recipes"
end
