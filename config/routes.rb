Rails.application.routes.draw do
  devise_for :customers, controllers: { registrations: 'registrations' }

  resources :salons
  resources :orders
  resources :customers

  get 'sort/:id/:by' => 'salons#show', as: 'sort'
  root 'salons#index'

  namespace :admin do
    resources :salons
    resources :cars
    resources :customers
    resources :orders

    root 'admin#index'
  end
end

