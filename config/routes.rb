require "monban/constraints/signed_in"

Rails.application.routes.draw do
  resource :session, only: [:new, :create, :destroy]
  resources :users, only: [:new, :create]
  resources :posts, only: [:new, :create, :index, :show]
  resources :categories, only: [:new, :create, :index, :show]
  resource :admin, only: [:show]
  resources :regions, only: [:new, :create, :index, :show]

  constraints Monban::Constraints::SignedIn.new do
    root "posts#index", as: :index
  end

  root to: "sessions#new"
end
