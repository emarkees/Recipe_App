Rails.application.routes.draw do
  resources :foods
  resources :recipe_foods
  resources :recipes
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "recipes#index"
  # config/routes.rb
  get '/public_recipes', to: 'recipes#public_recipes'
get '/custom_login', to: 'sessions#new', as: 'custom_login'

resources :shopping_lists, only: [:show]
end
