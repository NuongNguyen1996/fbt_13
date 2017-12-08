Rails.application.routes.draw do
  get 'booking_request/new'

  get 'booking_request/show'

  root "static_pages#home"
  get "/signup", to: "users#new"
  post "/signup", to: "users#create"
  get "/login", to: "sessions#new"
  post "/login", to: "sessions#create"
  get "/logout", to: "sessions#destroy"
  get "/search", to: "tours#search"
  resources :users
  resources :tours
  resources :tourdetails
end
