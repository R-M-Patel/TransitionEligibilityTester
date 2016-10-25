Rails.application.routes.draw do
  root 'user_pages#new'
  get '/root', to: 'user_pages#new'
  get '/result', to: 'user_pages#result'
  get '/support', to: 'user_pages#support'
  resources :searches

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
#   root 'application#hello'
  
end