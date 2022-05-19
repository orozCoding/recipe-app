Rails.application.routes.draw do
  # devise_scope :user do
  #   get '/', to: 'devise/sessions#new'
  # end
  devise_for :users
  resources :inventories
  resources :inventory_foods
  resources :foods
  resources :recipes do
    resources :recipe_foods
  end
  resources :users
  get 'general_shopping_list/', to: 'users#list'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root 'recipes#index'

  get 'users/:user_id/recipes', to: 'recipes#list'
end
