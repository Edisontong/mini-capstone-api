Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  get "/single_product/:id", controller: "products", action: "single_product"
  get "/all_products", controller: "products", action: "all_products"
end
