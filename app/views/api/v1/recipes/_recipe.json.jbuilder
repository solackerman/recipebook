json.extract! recipe, :id, :name, :description, :num_servings
json.steps do
  json.array! recipe.steps, partial: 'steps/step', as: :step
end
json.url api_v1_recipe_url(recipe, format: :json)
