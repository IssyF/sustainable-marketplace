Rails.application.routes.draw do
  mount StripeEvent::Engine, at: '/stripe-webhooks'

  devise_for :users, controllers: { registrations: "registrations" }

  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  get 'profile', to: 'buyers#profile'
  get 'seller_home', to: 'sellers#seller_home'
  get 'pages', to: 'pages#about_us'

  resources :buyers, only: [ :new, :create, :edit, :update ]

  resources :sellers do
    collection do
      get :bam
      get :before_july
      get :molby
    end
    resources :sustainability_practices, only: [ :new, :create, :edit, :update ]
  end

  resources :listings, only: [ :new, :create, :index, :show, :edit, :update, :destroy] do
    collection do
      # featured on home page
      get :new_in
      get :activewear
      get :denim
      get :jackets
      get :day_dresses
      # others on nav bar
      get :dresses
      get :tops
      get :trousers
      get :skirts
      get :accessories
    end
  end

  resources :orders, only: [:show, :create, :index] do
    resources :payments, only: :new
    resources :reviews, only: [ :new, :create ]
  end
  resources :reviews, only: [ :index, :show ]
end
