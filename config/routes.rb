Rails.application.routes.draw do
  mount_devise_token_auth_for 'User', at: 'auth', controllers: {
    sessions: 'overrides/sessions'
  }

  resources :users,    only: [:show]
  resources :products, only: [:index, :show, :create] do
    resources :reviews,   only: [:index, :create]
    resource  :favorites, only: [:create, :destroy]
  end
  resources :product_categories, only: [:index, :show]
  resources :user_ages,          only: [:index]
end
