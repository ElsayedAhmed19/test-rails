Rails.application.routes.draw do
  # resources :posts
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "application#index"
  root "pages#home"

  get "articles", to: "articles#index"
  get "articles/new", to: "articles#new"
  post "articles/", to: "articles#create"
  get "articles/:id", to: "articles#show"
end
