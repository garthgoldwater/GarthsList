require "monban/constraints/signed_in"

Rails.application.routes.draw do
  resource :session, only: [:new, :create, :destroy]
  resources :users, only: [:new, :create]
  resources :posts, only: [:new, :create, :index, :show, :destroy, :update, :edit] do
    resource :spam, only: [:create]
  end
  resources :categories, only: [:new, :create, :index, :show]
  resource :admin, only: [:show]
  resource :landing, only: [:show]
  resources :regions, only: [:new, :create, :index, :show]

  root to: "landings#show"
end
