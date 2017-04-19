Rails.application.routes.draw do

  get 'dashboards/show'

  devise_for :users

  resources :meetings do
    resources :bookings
  end

  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
