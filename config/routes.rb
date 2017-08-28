Rails.application.routes.draw do
  root to: 'home#index'

  get 'home/index'
  get 'home/access'

  resources :albums
  resources :photos
end

