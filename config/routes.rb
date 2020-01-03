Rails.application.routes.draw do
  match '/auth/:provider/callback', to: 'sessions#create', via: [:get, :post]
  root 'welcome#home'
  # Add your routes here
end
