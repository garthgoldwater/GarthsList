require "monban/constraints/signed_in"

Rails.application.routes.draw do
  resource :session, only: [:new, :create, :destroy]
  resources :users, only: [:new, :create]
  resources :posts, only: [:create]

  constraints Monban::Constraints::SignedIn.new do
    root "posts#index", as: :posts_index
  end



  root to: "sessions#new"
end
