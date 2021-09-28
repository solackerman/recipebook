json.extract! grocery_item, :id, :name, :need, :unit, :qty, :description, :created_at, :updated_at
json.url grocery_item_url(grocery_item, format: :json)
