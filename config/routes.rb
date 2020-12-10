Rails.application.routes.draw do

  devise_for :users
  root to: 'articles#index'
  resources :users, only: [:show, :edit, :update]
  resources :posts, only: [:new, :create]

  resources :articles
  resources :articles do
    resources :comments
  end
  resources :tags
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
