Rails.application.routes.draw do
  # get 'users/new'
  # get 'users/create'
  # get 'users/show'
  resources :users, only: [:new, :create, :show]
   # resources :users
  # resources :sessions
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
