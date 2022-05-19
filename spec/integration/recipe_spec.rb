require 'rails_helper'

RSpec.describe 'user recipe index', type: :feature do
  describe 'Recipe' do
    before(:each) do
      @user = User.create! name: 'jones', password: 'angel2000', email: 'jones@gmail.com'
      visit new_user_session_path
      fill_in 'Email', with: 'jones@gmail.com'
      fill_in 'Password', with: 'angel2000'
      click_button 'Log in'

      Recipe.create(name: 'one', description: 'test', user_id: @user.id, cooking_time: 34, preparation_time: 78)
      visit recipes_path
    end

    it 'shows the page title Public Recipes' do
      expect(page).to have_content('Public Recipes')
    end

    it 'shows recipe name' do
      expect(page).to have_content('one')
    end

    it 'shows creator name' do
      expect(page).to have_content(@user.name)
    end

    it 'shows Action title' do
      expect(page).to have_content 'Total food items'
    end
  end
end
