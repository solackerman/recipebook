json.extract! recipe, :id, :name, :description, :num_servings, :created_at, :updated_at
json.url recipe_url(recipe, format: :json)
