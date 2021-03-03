Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # resources :restaurants, only: [:create, :index, :destroy]

  get "restaurants", to: "restaurants#index"

  #CREATE NEW RESTAURANT
  get "restaurants/new", to: "restaurants#new"
  post "restaurants", to: "restaurants#create"

  # SHOW
  get "restaurants/:id", to: "restaurants#show", as: :show

  #CREATE NEW REVIEW
  get "restaurants/:restaurant_id/reviews/new", to: "reviews#new"
  post "restaurants/:restaurant_id/reviews", to: "reviews#create"

end
