Rails.application.routes.draw do
  # Add your routes here
  
  get '/auth/github/callback' => 'sessions#create'
  root 'welcome#home'
end
