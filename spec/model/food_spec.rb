require 'rails_helper'

RSpec.describe Food, type: :model do
  describe 'User model' do
    subject { Food.create(name: 'apples', measurement_unit: 'grams', price: 4, user_id: 1) }

    it 'check if subject name is null' do
      subject.name = nil
      expect(subject).to_not be_valid
    end

    it 'check if model is valid ' do
      subject.name = 'Orange'
      expect(subject).to be_valid
    end
  end
end
