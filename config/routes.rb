Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # get "/all_products" => "products#all_products"
  # get "/product1" => "products#product1"
  # get "/product2" => "products#product2"
  # get "/product3" => "products#product3"
  # get "/any_product/#product_key" => "products#any_product"
  get "/products" => "products#index"
  get "/products/:id" => "products#show"
  post "/products" => "products#create"
  patch "/products/:id" => "products#update"
end
