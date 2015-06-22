require 'subengine/constraints/subdomain_required'

Subengine::Engine.routes.draw do

  constraints(Subengine::Constraints::SubdomainRequired) do
    scope :module => "account" do
      root :to => "dashboard#index", :as => :account_root
      # get "/sign_in", :to => "sessions#new"
      # post "/sign_in", :to => "sessions#create", :as => :sessions
      get "/sign_up", :to => "users#new", :as => :user_sign_up
      post "/sign_up", :to => "users#create", :as => :do_user_sign_up
    end
  end

  root 'welcome#index'

  devise_for :users, class_name: 'Subengine::User', module: :devise

  get '/sign_up', :to => 'accounts#new', :as => :sign_up
  resources :accounts, only: [:create, :index, :new]
end
