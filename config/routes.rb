Rails.application.routes.draw do
  
	## ADMIN SUBDOMAIN
	get '/' => 'admin#dash', :constraints => {:subdomain => "admin"}

	get '/' => 'visitors#index', :constraints => {:subdomain => /.+/}, :as => :root

	resources :posts
  resources :users, :only => [:index, :show]

  get '/auth/:provider/callback' => 'sessions#create'
  get '/signin' => 'sessions#new', :as => :signin
  get '/signout' => 'sessions#destroy', :as => :signout
  get '/auth/failure' => 'sessions#failure'

  match '/*id' => 'high_voltage/pages#show', :as => :page, :via => :get

end