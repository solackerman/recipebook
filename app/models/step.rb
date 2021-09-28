# frozen_string_literal: true

class Step < ApplicationRecord
  belongs_to :recipe
  has_many :ingredients
  validates :number, uniqueness: { scope: :recipe }
end
