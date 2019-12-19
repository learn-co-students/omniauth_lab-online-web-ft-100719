Rails.application.routes.draw do
  match '/auth/:provider/callback', to: 'sessions#create', via: [:get, :post]
  root :to => 'welcome#home'
  get '/home', :to => 'welcome#home'
  get '/logout', :to => 'sessions#destroy'
end
