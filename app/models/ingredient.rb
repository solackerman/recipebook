class Ingredient < ApplicationRecord
  belongs_to :grocery_item
  belongs_to :step

  validates :grocery_item, uniqueness: { scope: :step }
end
