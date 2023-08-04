Rails.application.routes.draw do
  resources :recipe_foods
  resources :foods
  resources :recipes
  resources :shopping_list, only: [:index]
  devise_for :users
  root to: "home#index"

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  get '/general_shopping_list', to: 'shopping_list#index', as: 'shopping_list'
  post '/general_shopping_list', to: 'shopping_list#generate', as: 'generate_shopping_list'
  resources :recipes do
    get 'may', on: :member
  end
end
