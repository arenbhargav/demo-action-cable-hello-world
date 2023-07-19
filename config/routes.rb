Rails.application.routes.draw do
  # Defines the root path route ("/")
  root "rooms#index"

  resources :rooms, only: [:index, :show]

  # Add in our Websocket route
  mount ActionCable.server => '/cable'
end
