Rails.application.routes.draw do
  
	## ADMIN SUBDOMAIN
	get '/' => 'admin#dash', :constraints => {:subdomain => "admin"}, :as => :admin
  get '/' => 'application#home', :constraints => {:subdomain => false}
  get '/' => 'application#home', :constraints => {:subdomain => /.+/}, :as => :root

	resources :posts
  resources :users, :only => [:index, :show]

  get '/auth/:provider/callback' => 'sessions#create'
  get '/signin' => 'sessions#new', :as => :signin
  get '/signout' => 'sessions#destroy', :as => :signout
  get '/auth/failure' => 'sessions#failure'

  get '/admin/projects' => 'admin#projects', :as => :projects
  get '/admin/messages' => 'admin#messages', :as => :messages
  get '/admin/blog' => 'admin#blog', :as => :blog

  match '/*id' => 'high_voltage/pages#show', :as => :page, :via => :get

end