require 'rails_helper'

RSpec.describe 'Signup', type: :feature do
  describe 'signup' do
    it 'shows content' do
      visit new_user_session_path
      expect(page).to have_content('Log in')
      expect(page).to have_content('Email')
      expect(page).to have_content('Password')
    end

    it 'Fill inputs with diff password' do
      visit new_user_registration_path
      fill_in 'Name', with: 'angel'
      fill_in 'Email', with: 'angel@gmail.com'
      fill_in 'Password', with: '123456'
      click_button 'Sign up'
      expect(page).to have_content("Password confirmation doesn't match Password")
    end

    it 'Without fill email and password inputs' do
      visit new_user_registration_path
      fill_in 'Email', with: ''
      fill_in 'Password', with: ''
      click_button 'Sign up'
      expect(page).to have_content("Email can't be blank")
      expect(page).to have_content("Password can't be blank")
      expect(page).to have_content("Name can't be blank")
    end

    it 'correct email and password inputs  but no comfirm password' do
      visit new_user_registration_path
      fill_in 'Name', with: 'angel'
      fill_in 'Email', with: 'angel@gmail.com'
      fill_in 'Password', with: '123456'
      click_button 'Sign up'
      expect(page).to have_content("Password confirmation doesn't match Password")
    end

    it 'correct email and password inputs  but no comfirm password' do
      visit new_user_registration_path
      fill_in 'Name', with: 'angel'
      fill_in 'Email', with: 'angel@gmail.com'
      fill_in 'Password', with: '123456'
      fill_in 'Password confirmation', with: '123456'
      click_button 'Sign up'
      expect(page).to have_current_path root_path
    end
  end
end
