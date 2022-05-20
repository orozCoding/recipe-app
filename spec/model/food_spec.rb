require 'rails_helper'

RSpec.describe Food, type: :model do
  describe 'Food model' do
    before(:example) do
      User.destroy_all
      Recipe.destroy_all
      Food.destroy_all
      User.create(id: 1, name: 'Jones', email: 'email@dot.com', password: '321321')
      @food = Food.create(name: 'apples', measurement_unit: 'grams', price: 4, user_id: 1)
    end

    it 'check if @food name is null' do
      @food.name = nil
      expect(@food).to_not be_valid
    end

    it 'check if model is valid ' do
      @food.name = 'Orange'
      expect(@food).to be_valid
    end
  end
end
