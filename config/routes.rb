Rails.application.routes.draw do
  get 'users/new'
  resources :sessions, only: [:new, :create, :destroy]
  resources :users
end
