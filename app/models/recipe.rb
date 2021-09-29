class Recipe < ApplicationRecord
  has_many :steps, dependent: :destroy
end
