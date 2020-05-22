Rails.application.routes.draw do
  # get 'restaurant_pizzas/new'

  # get 'restaurant_pizzas/create'

  #get '/restaurants', to: 'restaurants#index'
  #get '/pizzas', to: 'pizzas#index'

  resources :pizzas, only: [:index, :show]

  resources :restaurants, only: [:show, :index]

  resources :restaurant_pizzas, only: [:new, :create]
end
