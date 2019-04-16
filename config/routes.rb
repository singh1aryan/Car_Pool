Rails.application.routes.draw do
  resources :cars
  root 'cars#index'
end