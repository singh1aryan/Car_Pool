Rails.application.routes.draw do
  devise_for :users
  resources :cars
  root 'cars#index'
end