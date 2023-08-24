Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"

  resources :bookings, only: [:index]
  resources :lives, only: [:index]

  resources :lives, only: [:show, :create, :new] do
    resources :bookings, only: [:new, :create]
  end

end
