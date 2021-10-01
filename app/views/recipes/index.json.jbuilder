json.array! @recipes do |recipe|
  json.extract! recipe, :id, :name, :description, :num_servings
  json.url recipe_url(recipe, format: :json)
end
