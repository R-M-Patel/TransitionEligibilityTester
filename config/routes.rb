Rails.application.routes.draw do

  get 'users/new'
  get 'sessions/new'

  resources :programs
  resources :program_requirements
  root 'searches#new'
  get   '/root',    to: 'searches#new'
  get   '/result',  to: 'searches#result'
  get   '/support', to: 'searches#support'
  post  '/search',  to: 'searches#search'
  get   '/signup',  to: 'users#new'
  post  '/signup',  to: 'users#create'
  get   '/login',   to: 'sessions#new'
  post  '/login',   to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'
  resources :searches
  resources :users
  
  get '/new', to: 'programs#new'
  get '/newpr', to: 'program_requirements#new'


  # root 'application#hello'
  
end