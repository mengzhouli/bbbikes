Rails.application.routes.draw do
  devise_for :users do
    resources :bikes, only: [:new, :create, :update, :edit, :destroy],
    controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }
  end

  resources :bikes, only: [:show, :index] do
    resources :bookings
    resources :reviews, only: [:index, :new, :create, :show]
  end

  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
