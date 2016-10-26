Rails.application.routes.draw do

  resources :programs
  resources :program_requirements
  root 'searches#new'
  get '/root', to: 'searches#new'
  get '/result', to: 'searches#result'
  get '/support', to: 'searches#support'
  post '/search', to: 'searches#search'
  resources :searches
  
  get '/new', to: 'programs#new'
  get '/newpr', to: 'program_requirements#new'


  # root 'application#hello'
  
end