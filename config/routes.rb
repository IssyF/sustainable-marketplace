Rails.application.routes.draw do
  mount StripeEvent::Engine, at: '/stripe-webhooks'

  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  get 'profile', to: 'users#profile'
  get 'seller_home', to: 'sellers#seller_home'
  get 'basket', to: 'pages#basket'

  resources :buyers, only: [ :new, :create, :edit, :update ]

  resources :sellers do
    collection do
      get :featured_sellers
    end
    resources :listings, only: [ :new, :create ]
    resources :sustainability_practices, only: [ :new, :create, :edit, :update ]
  end

  resources :listings, only: [ :index, :show, :edit, :update, :destroy] do
    collection do
      get :trending_categories
      get :new_in
      get :activewear
    end
  end

  resources :orders, only: [:show, :create, :index] do
    resources :payments, only: :new
    resources :reviews, only: [ :new, :create ]
  end
  resources :reviews, only: [ :index, :show ]
end
