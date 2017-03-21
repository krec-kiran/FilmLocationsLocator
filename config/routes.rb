Rails.application.routes.draw do
  resources :properties , except: [:show]

  root to: 'properties#index'
  get 'properties/:id', to:'properties#show'

  resources :blogs
end
