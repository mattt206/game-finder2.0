Rails.application.routes.draw do
  get 'users/profile'
  devise_for :users
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  get :bookings, to: "bookings#profile"
  resources :videogames do
    resources :bookings, only: %i[new create]
  end
  resources :bookings, except: %i[new create]
end
