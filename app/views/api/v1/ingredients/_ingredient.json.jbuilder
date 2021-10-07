json.extract! ingredient, :id, :grocery_item_id, :step_id, :unit, :qty
json.url api_v1_ingredient_url(ingredient, format: :json)
