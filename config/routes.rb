Rails.application.routes.draw do
  # devise_scope :user do
  #   get '/', to: 'devise/sessions#new'
  # end
  devise_for :users
  resources :inventories
  resources :inventory_foods
  resources :foods
  resources :recipe_foods
  resources :recipes
  resources :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "users#index"
end
