class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :inventories, dependent: :destroy
  has_many :foods, dependent: :destroy
  has_many :recipes, dependent: :destroy
  validates :name, length: { maximum: 250 }, presence: true
end
