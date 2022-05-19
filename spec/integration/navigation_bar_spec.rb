require 'rails_helper'

RSpec.describe 'Navigation menu', type: :feature do
  describe 'Navigation menu' do
    before(:each) do
      @user = User.create! name: 'jones', password: 'angel2000', email: 'jones@gmail.com'
      visit new_user_session_path
      fill_in 'Email', with: 'jones@gmail.com'
      fill_in 'Password', with: 'angel2000'
      click_button 'Log in'

      visit root_path
    end

    it 'shows the user navigation menu has all links' do
      expect(page).to have_content('Public Recipes')
      expect(page).to have_content('My Recipes')
      expect(page).to have_content('Create Recipe')
      expect(page).to have_content('Foods')
      expect(page).to have_content('Sign Out')
    end

    it 'shows Public Recipes link works' do
      click_on 'Public Recipes'
      expect(page).to have_content('Public Recipes')
    end

    it 'shows My Recipes link works' do
      click_on 'My Recipes'
      expect(page).to have_content('Recipes')
    end

    it 'shows Create Recipes link works' do
      click_button 'Create Recipe'
      expect(page).to have_content('New recipe')
    end

    it 'shows Foods link works' do
      click_on 'Public Recipes'
      expect(page).to have_content('Foods')
    end
  end
end
