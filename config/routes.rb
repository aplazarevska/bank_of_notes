Rails.application.routes.draw do
  resources :issuing_countries
  resources :years
  resources :images
  resources :listings
  resources :addresses
  resources :profiles
  devise_for :users
  root 'home#page'
  # get 'payments/success', to: 'payments#success'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
