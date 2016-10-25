Rails.application.routes.draw do

  root 'search#new'
  get '/root', to: 'search#new'
  get '/result', to: 'search#result'
  get '/support', to: 'search#support'
  resources :searches

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
#   root 'application#hello'
  
end