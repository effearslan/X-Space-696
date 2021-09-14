Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :spaces, only: [:show, :new, :create, :index] do
    resources :bookings, only: [:new, :create]
  end



  resources :bookings, only: [:show, :update] do
    member do
      get :status
    end
  end

  # bookings/43/status


end
