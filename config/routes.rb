Rails.application.routes.draw do
  devise_for :users
  root to: "lives#index"

  resources :bookings, only: [:index]

  resources :lives, only: [:show, :create, :new] do
    resources :bookings, only: [:new, :create]
  end

end
