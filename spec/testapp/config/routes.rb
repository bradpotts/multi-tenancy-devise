Rails.application.routes.draw do

  mount Subengine::Engine => "/subengine"
end
