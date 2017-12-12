Rails.application.routes.draw do
  root "static_pages#home"
  get "/signup", to: "users#new"
  post "/signup", to: "users#create"
  get "/login", to: "sessions#new"
  post "/login", to: "sessions#create"
  get "/logout", to: "sessions#destroy"
  get "/search", to: "tours#search"
  get "booking_request", to: "tourdetails#new"
  resources :users
  resources :tours
  resources :tourdetails
end
