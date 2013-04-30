Twitter::Application.routes.draw do
  root :to => 'application#index'
  resources :sessions, :only => [:new, :create, :destroy]
  resources :users
  resources :tweets

  match 'signup' => 'users#create', :as => :signup
  match 'login' => 'sessions#create', :as => :login
  match 'logout' => 'sessions#destroy', :as => :logout
  match 'delete_tweet' => 'tweets#destroy', :as => :delete_tweet


end
