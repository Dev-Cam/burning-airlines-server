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

  # API endpoints 
  get '/api/flights' => 'flights#getAll'
  get '/api/flight/:id' => 'flights#getOne'
  get '/api/flight/:id/seats' => 'flights#getSeats'
  get '/api/flights/search/:origin/:destination' => 'flights#search'

  get '/api/reservations/:flight_id' => 'reservations#getAll'
  get '/api/:user_id/reservations' => 'reservations#getAllUsers'
end