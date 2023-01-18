Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  get "/single_product/:id", controller: "products", action: "show"
  get "/all_products", controller: "products", action: "index"
end
