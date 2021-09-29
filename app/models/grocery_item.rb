class GroceryItem < ApplicationRecord
  has_many :item_locations, dependent: :delete_all
  has_many :ingredients
end
