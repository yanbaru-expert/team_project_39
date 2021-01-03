Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  devise_for :users
  root to: 'texts#index'
  resources :texts
  resources :movies, only:  %w(index)
end
