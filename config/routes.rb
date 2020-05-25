Rails.application.routes.draw do
  devise_for :users
  root 'posts#index'
  resources :posts do
    resources :images, only: :create
    resources :comments, only: :create 
  end
  resources :users, only: :index do
  end
  resources :parts, only: :index do
  end
end
