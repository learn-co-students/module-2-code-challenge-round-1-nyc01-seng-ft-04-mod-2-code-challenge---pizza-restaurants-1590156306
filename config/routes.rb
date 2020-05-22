Rails.application.routes.draw do
  resources :restaurants, only: [:index, :show]
  resources :restaurant_pizzas, only: [:index]
  resources :pizzas, only: [:index, :show]
  # get '/restaurants', to: 'restaurants#index'
  # get '/pizzas', to: 'pizzas#index'
end
