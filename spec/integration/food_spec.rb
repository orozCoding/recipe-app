require 'rails_helper'

RSpec.describe 'user food index', type: :feature do
  describe 'Food' do
    before(:each) do
      @user = User.create! name: 'jones', password: 'angel2000', email: 'jones@gmail.com'
      visit new_user_session_path
      fill_in 'Email', with: 'jones@gmail.com'
      fill_in 'Password', with: 'angel2000'
      click_button 'Log in'

      Food.create(name: 'one', measurement_unit: 'grams', user_id: @user.id, price: 3)
      visit foods_path
    end

    it 'shows the page title' do
      expect(page).to have_content('Foods')
    end

    it 'shows Measurement unit title' do
      expect(page).to have_content('Measurement unit')
    end

    it 'shows Name title' do
      expect(page).to have_content('Measurement unit')
    end

    it 'shows Action title' do
      expect(page).to have_content 'Action'
    end

    it 'shows Action title' do
      click_on 'Show this food', match: :first
      expect(page).to have_content('Show this food')
    end
  end
end
