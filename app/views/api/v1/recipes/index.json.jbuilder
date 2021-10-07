json.array! @recipes do |recipe|
  json.extract! recipe, :id, :name, :description, :num_servings
  json.url api_v1_recipe_url(recipe, format: :json)
end
