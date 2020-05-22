Rails.application.routes.draw do
  resources :restaurant_pizzas
  get '/restaurants', to: 'restaurants#index'
  get '/restaurants/:id', to: 'restaurants#show', as: 'restaurant'


  get '/pizzas', to: 'pizzas#index'
  get '/pizzas/:id', to: 'pizzas#show', as: 'pizza'

end
