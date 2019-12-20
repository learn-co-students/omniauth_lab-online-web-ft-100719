Rails.application.routes.draw do
  get "/", to:'welcome#home', as:'root'
  match '/auth/:provider/callback', to: 'sessions#create', via: [:get, :post]
end
