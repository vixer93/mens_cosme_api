Rails.application.routes.draw do
  mount_devise_token_auth_for 'User', at: 'auth'
  resources :users,    only: [:index, :create]
  resources :products, only: [:index, :show, :create] do
    resources :reviews, only: [:index, :create]
  end
end
