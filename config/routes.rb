Rails.application.routes.draw do
  root "chatroom#index"
  get 'login',to: "sessions#new"
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'
  post 'message',to: 'messages#create'

  mount ActionCable.server ,at: "/cable" # access using this routes
  #there needs to be a route through which this communication take place.
end
