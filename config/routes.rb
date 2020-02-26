Rails.application.routes.draw do
  devise_for :users
  root "posts#index"
  resources :posts do
    resources :comments, only: :create
  end
  resources :users, only: [:show]
  resources :toppages, only: [:index]
  # resources :toppages, only: [:index] do
  #   collection :sildeShowA
  # end
end
