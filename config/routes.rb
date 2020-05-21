Rails.application.routes.draw do
  devise_for :users
  root 'posts#index'
  resources :posts do
    resources :images, only: :create
  end
  resources :users, only: :show do
  end
end
