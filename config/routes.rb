Rails.application.routes.draw do
  resources :chatrooms
  resources :sessions
  root "chatrooms#index"
  get "login", to: 'sessions#new'
end
