Rails.application.routes.draw do
  resources :recipes
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  # config/routes.rb

get '/custom_login', to: 'sessions#new', as: 'custom_login'

  
end
