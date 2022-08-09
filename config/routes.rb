Rails.application.routes.draw do
  get   'auth/new',     to: 'auth#new'
  post  'auth/token',   to: 'auth#token'
  get   'auth/destroy', to: 'auth#destroy'

  namespace :api do
    resources :posts, only: [:index]
  end
end
