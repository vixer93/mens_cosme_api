Rails.application.routes.draw do
  resources :users,    only: [:index, :create]
  resources :products, only: [:index, :show, :create] do
    resources :reviews, only: [:create]
  end
end
