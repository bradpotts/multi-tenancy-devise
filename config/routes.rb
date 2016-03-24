require 'mtdevise/constraints/subdomain_required'

Mtdevise::Engine.routes.draw do

	constraints(Mtdevise::Constraints::SubdomainRequired) do
		scope :module => "account" do
			root :to => "dashboard#index", :as => :account_root
			# get "/sign_in", :to => "sessions#new"
			# post "/sign_in", :to => "sessions#create", :as => :sessions
			get "/sign_up", :to => "users#new", :as => :user_sign_up
			post "/sign_up", :to => "users#create", :as => :do_user_sign_up
      post 'users/sign_out' => "devise/sessions#destroy"
		end
	end

	devise_for :users, class_name: 'Mtdevise::User', module: :devise
	get '/sign_up', :to => 'accounts#new', :as => :sign_up
	resources :accounts, only: [:create, :index, :new]
	root 'welcome#index'
	
end