Rails.application.routes.draw do
  resources :user_fund_projects
  resources :wishlist_projects
  resources :wishlists
  resources :user_roles
  resources :user_projects
  resources :promises
  resources :projects
  resources :categories
  devise_for :users
  resources :users
  resources :userpasswords
  resources :welcome

  get "/", to: "projects#index"

  get "/users/:id", to: "users#show"

  get "/users/wishlist/:id", to: "users#wishlist"

  post "/users", to: "users#create"

  delete "/users/:id", to: "users#destroy"

  patch "/users/:id", to: "users#update"

  get "/promises/:id", to: "promises#show"

  post "/promises", to: "promises#create"

  delete "/promises/:id", to: "promises#destroy"

  patch "/promises/:id", to: "promises#update"

  get "/projects/:id", to: "projects#show"

  get "/projects/category/:category_id", to: "projects#index_by_cat"

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
