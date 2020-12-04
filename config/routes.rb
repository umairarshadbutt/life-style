Rails.application.routes.draw do

  devise_for :users
  root 'posts#show'
  resources :users, only: [:show, :edit, :update]
  resources :posts, only: [:new, :create]

  resources :articles
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
