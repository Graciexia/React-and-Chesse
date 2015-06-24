Rails.application.routes.draw do
  resources :letcheeses
  resources :cheeses
  get '/signup', to: 'users#new'
  resources :users
  get '/login', to: 'sessions#new', as: 'login'
  post '/login', to: 'sessions#create', as: 'create_session'
  get '/logout', to: 'sessions#destroy', as: 'logout'
  root 'application#index'
end
