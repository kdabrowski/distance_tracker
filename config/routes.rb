Rails.application.routes.draw do
  devise_for :users
  root 'user#show'

  resource :user, only: [:show]
end
