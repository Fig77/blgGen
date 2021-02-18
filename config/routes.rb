Rails.application.routes.draw do
  devise_for :users
  root 'articles#index'

  get "/articles/new", to: 'articles#new'
  post "/articles", to: 'articles#create'
  get "/articles/:id", to: "articles#show"
end
