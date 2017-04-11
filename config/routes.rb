Rails.application.routes.draw do
  devise_for :users
  resources :bikes do
    resources :bookings
    resources :reviews, only: [:index, :new, :create, :show]
  end

  namespace :profile do
  	resources :bikes, only: :index
  end

  resources :users, only: :show


  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
