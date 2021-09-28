json.extract! item_location, :id, :grocery_item_id, :store, :section, :created_at, :updated_at
json.url item_location_url(item_location, format: :json)
