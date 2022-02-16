Rails.application.routes.draw do

  root to: 'pages#home'

  # login, logout
  get '/login' => 'session#new'
  post '/login' => 'session#create'
  delete '/login' => 'session#destroy'

  resources :flights
  resources :reservations
  resources :users
  resources :airplanes

end
