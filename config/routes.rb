Rails.application.routes.draw do
  resources :inventories
  resources :inventory_foods
  resources :foods
  resources :recipe_foods
  resources :recipes
  resources :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root 'users#index'

  get 'users/:user_id/recipes', to: 'recipes#list'
end
