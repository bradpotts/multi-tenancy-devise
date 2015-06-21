Rails.application.routes.draw do
  get 'things' => 'things#index', as: :things
  get 'account_root' => 'things#index', as: :account_root

  mount Subscribem::Engine => "/"
end
