Rails.application.routes.draw do
  # Add your routes here
  root 'welcome#home'
  get '/auth/github/callback' => 'sessions#create'

end
