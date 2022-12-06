require 'sidekiq/web'

Rails.application.routes.draw do
  resources :booking_types
  resources :bookin_types
  resources :bookings
    authenticate :user, lambda { |u| u.admin? } do
      mount Sidekiq::Web => '/sidekiq'
    end


  devise_for :users

  authenticated :user do
    root to: "home#dashboard", as: :authenticated_root
    # Says we have home controller with a action called dashboard
  end

  root to: 'home#index'
 
end

# Use a built-in routing method by the devise gem
# The authentiacted :user checks if a user is indeed signed in 
# and if so redirected to a new root path
