Rails.application.routes.draw do
  devise_for :customers

  resources :salons do
    resources :cars
  end

  root 'salons#index'

  namespace :admin do
    resources :salons
    resources :cars
    resources :customers
    resources :orders

    root 'admin#index'
  end
end

