Rails.application.routes.draw do
  get "restaurants", to: "restaurants#index"

  get "restaurants/new", to: "restaurants#new", as: :new_restaurant
  post "restaurants", to: "restaurants#create"

  get "restaurants/:id", to: "restaurants#show", as: :restaurant

  get "/restaurants/:restaurant_id/reviews/new", to: "reviews#new", as: :review
  post "/restaurants/:restaurant_id/reviews", to: "reviews#create", as: :restaurants_reviews

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
