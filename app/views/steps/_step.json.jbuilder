json.extract! step, :id, :recipe_id, :number, :description, :timer
json.ingredients do
  json.array! step.ingredients, partial: 'ingredients/ingredient', as: :ingredient
end
json.url step_url(step, format: :json)
