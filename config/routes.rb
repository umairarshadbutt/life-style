Rails.application.routes.draw do
  root 'articles#show'
  resources :articles, only: [:new, :create, :show]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
