require 'rails_helper'

RSpec.describe Recipe, type: :model do
  describe 'Recipe model' do
    before(:example) do
      User.destroy_all
      Recipe.destroy_all
      User.create(id: 1, name: 'Jones', email: 'email@dot.com', password: '321321')
      @recipe = Recipe.create(name: 'apple jam', preparation_time: 5, cooking_time: 4, description: 'hello', user_id: 1)
    end

    it 'check if recipe name is null' do
      @recipe.name = nil
      expect(@recipe).to_not be_valid
    end

    it 'check if model is valid ' do
      @recipe.name = 'Orange'
      expect(@recipe).to be_valid
    end

    it 'check if model is invalid ' do
      @recipe.preparation_time = 'Orange'
      expect(@recipe).to_not be_valid
    end

    it 'check if model is invalid ' do
      @recipe.cooking_time = 'anple'
      expect(@recipe).to_not be_valid
    end

    it 'check if model is valid ' do
      @recipe.preparation_time = 52
      expect(@recipe).to be_valid
    end

    it 'check if model is valid ' do
      @recipe.cooking_time = 32
      expect(@recipe).to be_valid
    end
  end
end
