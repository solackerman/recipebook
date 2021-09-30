class GroceryItem < ApplicationRecord
  has_many :item_locations, dependent: :delete_all
  has_many :ingredients

  validates :name, uniqueness: true
end
