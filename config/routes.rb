Subengine::Engine.routes.draw do
	root "dashboard#index"
  
  get "/sign_up", :to => "accounts#new", :as => :sign_up
  
  post "/accounts", :to => "accounts#create", :as => :accounts
end