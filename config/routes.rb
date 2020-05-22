Rails.application.routes.draw do
  resources :pizzas
  resources :restaurant_pizzas
  resources :restaurants
  #get '/restaurants', to: 'restaurants#index'
  #get '/pizzas', to: 'pizzas#index'
end
