Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  resources :instruments, only: [:index, :show, :new, :create, :edit, :update] do
    resources :bookings, only: [:new, :create]
  end

  resources :pages, only: [:dashboard] do
    resources :bookings, only: [:show, :edit, :update, :destroy]
  end
end
