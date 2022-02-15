Rails.application.routes.draw do

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

end
