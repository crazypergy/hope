Rails.application.routes.draw do
  devise_for :admins
  root to: 'home#index'

  get 'home/index'
  get 'home/access'
  get 'home/info'
end
