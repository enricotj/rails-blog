Rails.application.routes.draw do
  get 'main/index'

  # Define REST resources for articles
  resources :articles do
    # Define comments as a nested resource within articles
    resources :comments
  end

  root 'main#index'
end
