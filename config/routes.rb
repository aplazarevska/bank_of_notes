Rails.application.routes.draw do
  post 'payment/page', to:"payment#create", as: 'payment'
  resources :issuing_countries
  resources :years
  resources :images
  resources :listings
  resources :addresses
  resources :profiles
  devise_for :users
  root 'home#page'
  get 'payment/cancel', to:"payment#cancel", as: 'payment_cancel'
  # get 'payments/success', to: 'payments#success'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
