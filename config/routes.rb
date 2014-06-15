Satyaprit::Application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  root to: 'static_pages#winners'

  #resources :submissions, only: [:new, :create]
end
