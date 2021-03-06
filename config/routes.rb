Rails.application.routes.draw do
  resources :departamentos
  get "produtos/busca", to: "produtos#busca", as: :busca_produto

  # get "produtos/new", to: "produtos#new"
  # post "produtos", to: "produtos#create"
  # delete "produtos/:id", to:"produtos#destroy", as: :produto
  resources :produtos, only: [:new, :create, :destroy, :edit, :update]
  
  root to: "produtos#index"
end
