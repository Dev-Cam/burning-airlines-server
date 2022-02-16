Rails.application.routes.draw do
<<<<<<< HEAD
  
  # Admin ROUTES ***************************************
  #create flight 


  # read

  get '/admin' => 'admin#index'
=======

  get 'reservations/index'
  get 'reservations/new'
  get 'reservations/edit'
  get 'reservations/show'
  get 'users/index'
  get 'users/new'
  get 'users/edit'
  get 'users/show'
  get 'airplanes/index'
  get 'airplanes/new'
  get 'airplanes/edit'
  get 'airplanes/show'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root to: 'pages#home'

  resources :flights
  resources :reservations
  resources :users
  resources :airplanes

>>>>>>> e19c7c976767a2100d0296e852994a627ed1cc0a
end
