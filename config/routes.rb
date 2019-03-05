Rails.application.routes.draw do 

  root 'static_pages#home'
  get '/expoes', to: 'expos#index'
  get '/signup', to: 'users#new'  
  get '/users', to: 'users#index'
  get '/about', to: 'static_pages#about'
  get '/home', to: 'static_pages#home'
  get '/login', to: 'sessions#new'  
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'
  resources :expos
  resources :users
  resources :account_activations, only: [:edit]
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
