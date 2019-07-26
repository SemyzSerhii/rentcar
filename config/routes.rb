Rails.application.routes.draw do
  devise_for :authenticates

  root 'salons#index'

  mount LetterOpenerWeb::Engine, at: '/letter_opener' if Rails.env.development?
end

