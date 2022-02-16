Rails.application.routes.draw do
<<<<<<< HEAD
  
  # Admin ROUTES ***************************************
  #create flight 


  # read

  get '/admin' => 'admin#index'
=======

  root to: 'pages#home'

  # login, logout
  get '/login' => 'session#new'
  post '/login' => 'session#create'
  delete '/login' => 'session#destroy'

  resources :flights
  resources :reservations
  resources :users
  resources :airplanes

>>>>>>> e19c7c976767a2100d0296e852994a627ed1cc0a
end
