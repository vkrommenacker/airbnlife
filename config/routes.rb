Rails.application.routes.draw do
  devise_for :users
  root to: "lives#index"

  #as renter-locataire
  resources :lives, only: [:index] do
    resources :bookings, only: [:index, :new, :destroy]
  end

  #as owner-propriétaire
  namespace :owner do
    resources :lives, only: [:show, :new, :create]

    resources :bookings, only: [:show, :create, :new] do
      member do
        patch :accept
        patch :decline
      end
    end
  end
end
