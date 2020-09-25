Rails.application.routes.draw do
  resources :users, only: [:new, :create, :show]
  resources :events
  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  delete '/logout' => 'sessions#destroy'
  get '/welcome' => 'sessions#welcome'
end
