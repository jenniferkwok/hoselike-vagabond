Rails.application.routes.draw do

  # root to: "users#new"

  # get "/users", to: "users#index", as: "users" #GET display a list of all users

  # get "/users/new", to: "users#new", as: "new_user" #GET returns an HTML form for creating new users

  # post "/users", to: "users#create" #POST create a new user

  # get "/users/:id", to: "users#show" #GET display a specific user

  # get "users/:id/edit", to: "users#edit", as: "users"

  # patch "users/:id", to: "users#update" 

  root to: "welcome#index"

  get "/sign_in", to: "sessions#new" #GET returns an HTML form for creating new sessions

  post "/sessions", to: "sessions#create" #POST create a new session


  get "/posts", to: "posts#index", as: "posts"

  get "/posts/new", to: "posts#new", as: "new_post"
  
  post "/posts", to: "posts#create"

  get "/cities", to: "cities#index", as: "cities"

  resources :users

  

end
