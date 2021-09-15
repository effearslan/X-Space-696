Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :spaces, only: [:show, :new, :create, :index, :edit, :update, :destroy] do
    resources :bookings, only: [:index, :new, :create]
  end

  # /spaces/id/bookings/new
  resources :bookings, only: [:show, :update] do
    member do
      patch :approve
      patch :decline
    end
  end

  resource :dashboard, only: [:show]

end
