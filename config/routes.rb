Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  get 'dashboard', to: 'pages#dashboard', as: 'dashboard'

  resources :instruments, only: [:index, :show, :new, :create, :edit, :update] do
    resources :bookings, only: [:new, :create]
  end

  resources :pages do
    resources :bookings, only: [:show, :edit, :update, :destroy]
  end
end
