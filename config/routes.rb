Rails.application.routes.draw do
  get 'reviews/new'
  # get 'restaurants/:id', to: 'restaurants#show', as: :restaurant
  # get 'restaurants', to: 'restaurants#index', as: :restaurants
  # get 'restaurants/new', to: 'restaurants#new', as: :new_restaurant
  # post 'restaurants', to: 'restaurants#create'

  resources :restaurants, only: [:show, :index, :new, :create] do |variable|
    resources :reviews, only: [:new, :create]
  end

end
