Rails.application.routes.draw do
  devise_for :users

  devise_scope :user do
    resources :reservations, only: [:index]
    get 'profile', to: 'users#profile', as: :profile
  end

  resources :spaces do
    resources :reservations, only: [:new,  :create ]
    resources :reviews, only: [:create]
  end

  resources :reservations, only: [:show, :destroy]




  # get 'reservations/:id', to: 'reservations#show', as: :reservation_id

  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
