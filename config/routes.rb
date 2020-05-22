Rails.application.routes.draw do
  # get '/restaurants', to: 'restaurants#index'
  # get '/pizzas', to: 'pizzas#index'

  resources :pizzas, only: [:index, :show]
  resources :restaurants, only: [:index, :show]
  resources :restaurant_pizzas, only: [:new, :create]
end
