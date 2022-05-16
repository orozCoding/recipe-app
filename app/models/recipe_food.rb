class RecipeFood < ApplicationRecord
  belongs_to :recipe
  belongs_to :food
  validates :quantity, comparison: { greater_than_or_equal_to: 0 }, numericality: { only_integer: true }, presence: true
end
