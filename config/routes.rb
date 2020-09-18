Rails.application.routes.draw do
  root 'home#index'
  resources :cnab_transactions, only: [:index, :new, :create]
  resources :stores, only: [:index]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
