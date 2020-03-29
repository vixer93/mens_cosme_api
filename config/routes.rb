Rails.application.routes.draw do
  resources :users,    only: [:index, :create]
  resources :products, only: [:index, :create]
end
