require 'rails_helper'

RSpec.describe Recipe, type: :model do
  describe 'User model' do
    subject { Recipe.create(name: 'apple jam', preparation_time: 5, cooking_time: 4, description: 'hello', user_id: 1) }

    it 'check if subject name is null' do
      subject.name = nil
      expect(subject).to_not be_valid
    end

    it 'check if model is valid ' do
      subject.name = 'Orange'
      expect(subject).to be_valid
    end

    it 'check if model is invalid ' do
      subject.preparation_time = 'Orange'
      expect(subject).to_not be_valid
    end

    it 'check if model is invalid ' do
      subject.cooking_time = 'anple'
      expect(subject).to_not be_valid
    end

    it 'check if model name is invalid ' do
      subject.cooking_time = "anpleanpleanpleanpleanpleanpleanpleanple
        anpleanpleanpleanpleanpleanpleanpleanpleanpleanpleanpleanpleanpleanpleanpleanpleanple
        anpleanpleanpleanpleanple
        anpleanpleanpleanpleanpleanpleanpleanpleanple"
      expect(subject).to_not be_valid
    end
  end
end
