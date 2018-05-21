Rails.application.routes.draw do
  devise_for :users

  resources :users do
    member do
      get 'reservations', to: "users#reservations"
    end
  end

  resources :spaces

  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
