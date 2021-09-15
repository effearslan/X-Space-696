Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :spaces, only: [:show, :new, :create, :index, :edit, :update] do
    resources :bookings, only: [:index, :new, :create]
  end

  # /spaces/id/bookings/new


  resources :bookings, only: [:show, :update] do
    member do
      patch :approve
      patch :decline
    end
  end

                    #    space_bookings POST   /spaces/:space_id/bookings(.:format)                                                     bookings#create
                    # new_space_booking GET    /spaces/:space_id/bookings/new(.:format)                                                 bookings#new
                    #   approve_booking PATCH  /bookings/:id/approve(.:format)                                                          bookings#approve
                    #   decline_booking PATCH  /bookings/:id/decline(.:format)                                                          bookings#decline
                    #           booking GET    /bookings/:id(.:format)                                                                  bookings#show
                    #                   PATCH  /bookings/:id(.:format)                                                                  bookings#update
                    #                   PUT    /bookings/:id(.:format)                                                                  bookings#update


end
