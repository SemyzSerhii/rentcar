Rails.application.routes.draw do
  devise_for :customers

  root 'salons#index'

  namespace :admin do
    resources :salons
    resources :cars

    root 'admin#index'
  end
end

