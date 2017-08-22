Rails.application.routes.draw do
  resources :albums
  root to: 'home#index'

  get 'home/index'
  get 'home/access'
end

