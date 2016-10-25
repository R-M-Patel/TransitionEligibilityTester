Rails.application.routes.draw do

  root 'searches#new'
  get '/root', to: 'searches#new'
  # get '/result', to: 'searches#result'
  get '/support', to: 'searches#support'
  resources :searches


  # root 'application#hello'
  
end