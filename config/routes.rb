Rails.application.routes.draw do
  #get "produtos", to: "produtos#index"
  root to: "produtos#index"
  get "produtos/new", to: "produtos#new"
  post "produtos", to: "produtos#create"
  delete "produtos/:id", to:"produtos#destroy", as: :produto
end
