Rails.application.routes.draw do

  resources :users, only: :show

  get 'dashboards/show'

  devise_for :users

  resources :meetings do
    resources :bookings do
      member do
        patch "confirm_user"
      end
    end

  end

  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
