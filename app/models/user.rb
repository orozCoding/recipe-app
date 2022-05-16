class User < ApplicationRecord
  has_many :inventories, dependent: :destroy
  has_many :foods, dependent: :destroy
  has_many :recipes, dependent: :destroy
  validates :name, length: { maximum: 250 }, presence: true
end
