Rails.application.routes.draw do
  resources :articles
  devise_for :users
  root "posts#index"
  resources :posts do
    resources :comments, only: [:create, :destroy]
  end
  resources :users, only: [:show]
  resources :toppages, only: [:index]
end
