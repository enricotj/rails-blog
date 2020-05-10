Rails.application.routes.draw do
  get 'main/index'

  # Define REST resources
  resources :articles

  root 'main#index'
end
