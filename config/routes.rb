Rails.application.routes.draw do
  resources :foods
  resources :recipes
  devise_for :users
  root to: "home#index"
  get 'public_recipes', to: 'public_recipes#index'

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
