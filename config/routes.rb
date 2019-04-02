# frozen_string_literal: true

Rails.application.routes.draw do
  get 'search/index'
  devise_for :users
  get 'home/index'

  root to: 'home#index'
  resources :users, only: %i[show edit update]
  resources :posts, only: %i[new create show destroy]

  get 'search' => 'search#index'
end
