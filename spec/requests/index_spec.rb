require 'rails_helper'

RSpec.describe 'User', type: :request do
  describe 'UserController' do
    before(:each) do
      get '/'
    end

    it 'GET request returns correct response' do
      expect(response).to have_http_status(:ok)
    end
    it 'response body includes correct text' do
      expect(response.body).to include('Public Recipes')
    end

    it 'response body includes correct nav menu' do
      expect(response.body).to include('Public Recipes')
      expect(response.body).to include('Log In')
      expect(response.body).to include('Sign Up')
    end
  end
end
