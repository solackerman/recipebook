json.extract! recipe, :id, :name, :description, :num_servings
json.steps do
  json.array! recipe.steps, partial: 'steps/step', as: :step
end
json.url recipe_url(recipe, format: :json)
