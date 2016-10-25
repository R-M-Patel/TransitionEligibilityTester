Rails.application.routes.draw do
  get '/root', to: 'user_pages#home'
  get '/result', to: 'user_pages#result'
  get '/support', to: 'user_pages#support'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'user_pages#home'
#   root 'application#hello'
  
end