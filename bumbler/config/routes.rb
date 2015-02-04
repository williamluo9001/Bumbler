Rails.application.routes.draw do

 resources :users
 resources :posts
 resources :comments

 get 'signin', to: 'sessions#new'
 post '/signin', to: 'session#create'
 delete '/logout', to: 'sessions#destroy'


  
  root 'welcome#index'

  
end
