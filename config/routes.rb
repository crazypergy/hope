Rails.application.routes.draw do
  root to: 'home#index'

  resources :messages
  devise_for :admins

  get 'home/index'
  get 'home/access'
  get 'home/info'
end
