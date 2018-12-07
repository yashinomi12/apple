Rails.application.routes.draw do
  resources :oranges
  resources :apple_models
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root :to => 'top#index'
  # resources :top 　#実際は複数
  get '/top', :to => 'top#show'

end
