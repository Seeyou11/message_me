Rails.application.routes.draw do
  resources :sessions
  root "chatrooms#index"
  get "login", to: 'sessions#new'
  post 'login', to: 'sessions#create'
  get 'logout', to: 'sessions#destroy'
end
