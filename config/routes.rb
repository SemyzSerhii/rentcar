Rails.application.routes.draw do
  devise_for :authenticates

  root 'salons#index'
end
