Satyaprit::Application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  root to: 'submissions#new'

  resources :submissions, only: [:new, :create]
end
