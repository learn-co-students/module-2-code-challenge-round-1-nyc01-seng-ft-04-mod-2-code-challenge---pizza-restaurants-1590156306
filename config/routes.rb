Rails.application.routes.draw do
  resources :restaurant_pizzas, only: [:create, :new]
  resources :pizzas, only: [:index, :show]
  resources :restaurants, only: [:index, :show]

  # get '/restaurants', to: 'restaurants#index'
  # get '/pizzas', to: 'pizzas#index'
end
