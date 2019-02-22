Rails.application.routes.draw do

  resources :expos
  root 'static_pages#home'
  get '/expoes', to: 'expos#index'
  get '/signup', to: 'users#new'
  get '/about', to: 'static_pages#about'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
