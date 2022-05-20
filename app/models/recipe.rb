class Recipe < ApplicationRecord
  belongs_to :user
  has_many :recipe_foods, dependent: :destroy
  validates :name, length: { maximum: 250 }, presence: true
  validates :description, presence: true
  validates :preparation_time, comparison: { greater_than_or_equal_to: 0 }, numericality: { only_integer: true }, presence: true
  validates :cooking_time, comparison: { greater_than_or_equal_to: 0 }, numericality: { only_integer: true }, presence: true

  def total_food_items
    recipe_foods.length
  end

  def total_price
    total = 0
    recipe_foods.each do |recipe_food|
      total += recipe_food.value
    end
    total
  end
end
