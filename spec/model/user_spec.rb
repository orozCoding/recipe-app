require 'rails_helper'

RSpec.describe User, type: :model do
  describe 'User model' do
    subject { User.find(1) }

    it 'check if subject name is null' do
      subject.name = nil
      expect(subject).to_not be_valid
    end

    it 'check if model is valid ' do
      subject.name = 'Angel'
      expect(subject).to be_valid
    end
  end
end
