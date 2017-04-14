Rails.application.routes.draw do
  get 'reviews/new'

  get 'reviews/create'

  devise_for :users,
    controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }

  resources :bikes do
    resources :bookings, only: [:create, :edit, :update, :destroy]
    resources :reviews, only: [:index, :new, :create, :show]
  end

  namespace :profile do
  	resources :bikes, only: :index
    resources :bookings, only: :index
  end

  resources :users, only: :show

  mount Attachinary::Engine => "/attachinary"
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
