Rails.application.routes.draw do

  namespace :profile do
    resources :users, only: :show
  end

  get 'dashboards/show'

  devise_for :users, controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }

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
