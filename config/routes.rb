Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"


  # USERS
  resources :users, only: [:index, :show]
  get "/users_available", to: "users#available"


  # ACTIVITIES
  resources :activities, only: [:index, :show]
  
end
