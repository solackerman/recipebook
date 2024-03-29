json.extract! step, :id, :recipe_id, :number, :description, :timer
json.ingredients do
  json.array! step.ingredients, partial: 'api/v1/ingredients/ingredient', as: :ingredient
end
json.url api_v1_step_url(step, format: :json)
