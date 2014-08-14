Rails.application.routes.draw do
  
  resources :posts
  resources :users, :only => [:index, :show]
  
  root to: 'visitors#index'

  get '/auth/:provider/callback' => 'sessions#create'
  get '/signin' => 'sessions#new', :as => :signin
  get '/signout' => 'sessions#destroy', :as => :signout
  get '/auth/failure' => 'sessions#failure'

  match '/*id' => 'high_voltage/pages#show', :as => :page, :via => :get

end