Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  devise_for :users
  root to: 'texts#index'
  resources :texts do
    resource :text_progresses, only: %w(create destroy)
  end
  resources :movies, only:  %w(index) do
    resource :movie_progresses, only: %w(create destroy)
  end
end
