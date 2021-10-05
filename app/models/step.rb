# frozen_string_literal: true

class Step < ApplicationRecord
  belongs_to :recipe, optional: true
  has_many :ingredients, dependent: :delete_all
  validates :number, uniqueness: { scope: :recipe }
  accepts_nested_attributes_for :ingredients, allow_destroy: true
end
