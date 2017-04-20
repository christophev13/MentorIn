Rails.application.routes.draw do

  get 'dashboards/show'

  devise_for :users, controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }

  resources :meetings do
    resources :bookings
  end

  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
