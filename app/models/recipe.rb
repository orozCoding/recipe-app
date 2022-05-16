class Recipe < ApplicationRecord
  belongs_to :user
  has_many :recipe_foods, dependent: :destroy
  validates :name, length: { maximum: 250 }, presence: true
  validates :description, presence: true
  validates :preparation_time, comparison: { greater_than_or_equal_to: 0 }, numericality: { only_integer: true }, presence: true
  validates :cooking_time, comparison: { greater_than_or_equal_to: 0 }, numericality: { only_integer: true }, presence: true
end
