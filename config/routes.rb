Rails.application.routes.draw do
  require 'sidekiq/web'
  mount Sidekiq::Web => '/mysidekiq'
  resources :properties
  root to: 'properties#index'
  # get 'lightbox', to:'properties#lightbox'

  resources :blogs

  match '/contacts',     to: 'contacts#new',             via: 'get'
  resources "contacts", only: [:new, :create]

end
