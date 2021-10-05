class Recipe < ApplicationRecord
  has_many :steps, -> { includes :ingredients }, dependent: :destroy
  accepts_nested_attributes_for :steps, allow_destroy: true
end
