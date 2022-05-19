require 'rails_helper'

RSpec.describe 'User', type: :request do
  describe 'Login' do
    before(:each) do
      get '/users/sign_in'
    end

    it 'GET request returns correct response' do
      expect(response).to have_http_status(:ok)
    end
    it 'response body includes correct text' do
      expect(response.body).to include('Log in')
    end

    it 'response body includes correct nav menu' do
      expect(response.body).to include('Email')
      expect(response.body).to include('Password')
      expect(response.body).to include('Sign up')
    end
  end
end
