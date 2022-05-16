class Food < ApplicationRecord
  belongs_to :user
  has_many :inventory_foods, dependent: :destroy
  has_many :recipe_foods, dependent: :destroy
  validates :name, length: { maximum: 250 }, presence: true
  validates :measurement_unit, presence: true
  validates :price, numericality: { only_integer: true }, presence: true
end
