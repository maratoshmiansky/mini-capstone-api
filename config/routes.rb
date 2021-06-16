Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # get "/all_products", controller: "products", action: "all_products"
  # get "/product1", controller: "products", action: "product1"
  # get "/product2", controller: "products", action: "product2"
  # get "/product3", controller: "products", action: "product3"
  get "/all_products" => "products#all_products"
  get "/product1" => "products#product1"
  get "/product2" => "products#product2"
  get "/product3" => "products#product3"
end
