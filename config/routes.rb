Rails.application.routes.draw do 

  resources :expos
  resources :users
  root 'static_pages#home'
  get '/expoes', to: 'expos#index'
  get '/signup', to: 'users#new'  
  get '/users', to: 'users#index'
  get '/about', to: 'static_pages#about'
  get '/home', to: 'static_pages#home'
  get '/login', to: 'sessions#new'  
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
