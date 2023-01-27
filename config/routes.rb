Rails.application.routes.draw do
  devise_for :admins, controllers: { omniauth_callbacks: 'admins/omniauth_callbacks' }
  resources :products
  root to: 'home#index'
  get 'home/index'
  get 'products/index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
