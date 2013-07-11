FlickrLab::Application.routes.draw do
  get "sessions/new"
  get "users/new"
  get "logout" => "sessions#destroy", :as => "logout"
  get "login" => "sessions#new", :as => "login"
  get "signup" => "users#new", :as => "signup"
  resources :photos
  resources :users
  resources :sessions

  resources :albums

  root :to => "home#index"
end
