Rails.application.routes.draw do
  root "flights#index"
  get 'flights/index' => 'flights#index', as: :flights
  get 'bookings/index'
  get 'bookings/new' => 'bookings#new', as: :new_booking
  resources :bookings
end
