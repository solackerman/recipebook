class Ingredient < ApplicationRecord
  belongs_to :grocery_item
  belongs_to :step
end
