Rails.application.routes.draw do
  root to: "orders#index"

  # # namespace :admin do
  #   resources :products
  #   resources :orders
  #   resources :units
  #   resources :categories
  #   resources :customers
  # # end
  resources :products, only: [:index, :show]
  resources :orders, only: [:index, :show]
  resources :units, only: [:index, :show]
  resources :categories, only: [:index, :show]
  resources :customers, only: [:index, :show]
  resources :discounts, only: [:index, :show]
  resources :members, only: [:index, :show]
  resources :strengths, only: [:index, :show]
  resources :purchases, only: [:index, :show]

  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

