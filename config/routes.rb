Rails.application.routes.draw do
  mount StripeEvent::Engine, at: '/stripe-webhooks'

  devise_for :users, controllers: { registrations: "registrations" }

  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  get 'profile', to: 'users#profile'
  get 'seller_home', to: 'sellers#seller_home'
  get 'pages', to: 'pages#about_us'

  resources :buyers, only: [ :new, :create, :edit, :update ]

  resources :sellers do
    collection do
      get :bam
      get :before_july
      get :molby
    end
    resources :listings, only: [ :new, :create ]
    resources :sustainability_practices, only: [ :new, :create, :edit, :update ]
  end

  resources :listings, only: [ :index, :show, :edit, :update, :destroy] do
    collection do
      get :new_in
      get :activewear
      get :denim
      get :jackets
      get :midi_dresses
    end
  end

  resources :orders, only: [:show, :create, :index] do
    resources :payments, only: :new
    resources :reviews, only: [ :new, :create ]
  end
  resources :reviews, only: [ :index, :show ]
end
