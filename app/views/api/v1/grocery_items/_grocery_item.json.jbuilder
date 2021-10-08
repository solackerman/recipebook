json.extract! grocery_item, :id, :name, :need, :unit, :qty, :description
json.item_locations do
  json.array! grocery_item.item_locations, partial: 'api/v1/item_locations/item_location', as: :item_location
end
json.url api_v1_grocery_item_url(grocery_item, format: :json)
