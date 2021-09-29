json.extract! ingredient, :id, :grocery_item_id, :step_id, :unit, :qty, :created_at, :updated_at
json.url ingredient_url(ingredient, format: :json)
