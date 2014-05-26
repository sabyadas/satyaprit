Satyaprit::Application.routes.draw do
  root to: 'submissions#new'

  resources :submissions, only: [:new, :create]
end
