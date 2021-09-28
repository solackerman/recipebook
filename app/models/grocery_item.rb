class GroceryItem < ApplicationRecord
  has_many :item_locations
  has_many :ingredients
end
