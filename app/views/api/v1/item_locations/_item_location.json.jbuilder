json.extract! item_location, :id, :grocery_item_id, :store, :section
json.url api_v1_item_location_url(item_location, format: :json)
