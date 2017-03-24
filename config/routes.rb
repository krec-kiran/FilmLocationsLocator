Rails.application.routes.draw do
  resources :properties
  root to: 'properties#index'
  # get 'lightbox', to:'properties#lightbox'

  resources :blogs
end
