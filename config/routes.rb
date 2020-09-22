Rails.application.routes.draw do
  # get 'events/index'
  # get 'events/new'
  # get 'events/create'
  # get 'events/show'
  resources :users, only: [:new, :create, :show]
  resources :events
  # resources :sessions
  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  delete '/logout' => 'sessions#destroy'
  get '/welcome' => 'sessions#welcome'
end
