# frozen_string_literal: true

Rails.application.routes.draw do
  resources :foods
  resources :shopping_list, only: %i[index]
  resources :recipe_foods, only: %i[new create]
  resources :inventory_foods, only: %i[new create]
  get 'public_recipes', to: 'public_recipes#index'
  devise_for :users
  resources :recipes, only: %i[index show new create destroy update] do
    member do
      delete :destroy
    end
  end
  resources :inventories
  root 'recipes#index'
end
