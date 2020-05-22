Rails.application.routes.draw do
  resources :restaurants, only: [:x, :y, :z]
  resources :restaurant_pizzas
  resources :pizzas, only: [:x, :y, :z]
  # get '/restaurants', to: 'restaurants#index'
  # get '/pizzas', to: 'pizzas#index'
end
