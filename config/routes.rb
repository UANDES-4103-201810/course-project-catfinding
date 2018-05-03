Rails.application.routes.draw do
  devise_for :users
  get 'welcome/index'
  resources :users
  resources :projects
  resources :categories
  resources :promises
  resources :userpasswords
  resources :welcome

  get "/", to: "welcome#index"

  get "/users/:id", to: "users#show"

  get "/users", to: "users#index"

  get "/users/wishlist/:id", to: "users#wishlist"

  post "/users", to: "users#create"

  delete "/users/:id", to: "users#destroy"

  patch "/users/:id", to: "users#update"

  get "/promises/:id", to: "promises#show"

  post "/promises", to: "promises#create"

  delete "/promises/:id", to: "promises#destroy"

  patch "/promises/:id", to: "promises#update"

  get "/projects/:id", to: "projects#show"

  post "/projects", to: "projects#create"

  delete "/projects/:id", to: "projects#destroy"

  patch "/projects/:id", to: "projects#update"

  get "/categories/:id", to: "categories#show"

  get "/userpasswords/:id", to: "userpasswords#show"

  post "/userpasswords", to: "userpasswords#create"

  delete "/userpasswords/:id", to: "userpasswords#destroy"

  patch "/userpasswords/:id", to: "userpasswords#update"

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
