Rails.application.routes.draw do
  # Add your routes here
  root 'welcome#home'

  delete '/logout', to: 'sessions#destroy'
  match '/auth/:provider/callback', to: 'sessions#create', via: [:get, :post]
  match '/app/github/callback', to: 'sessions#create', via: [:get, :post]
end
