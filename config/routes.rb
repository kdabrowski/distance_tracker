Rails.application.routes.draw do
  devise_for :users
  root 'trips#index'

  resources :trips, only: %w(index create new)
  resources :daily_reports, only: %w(index)
end
