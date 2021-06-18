class ProductsController < ApplicationController
  # def all_products
  #   render json: Product.all.as_json
  # end

  # def product1
  #   render json: Product.find_by(name: "Widget").as_json
  # end

  # def product2
  #   render json: Product.find_by(name: "Thingy").as_json
  # end

  # def product3
  #   render json: Product.find_by(name: "Gadget").as_json
  # end

  # def any_product
  #   input = params["name"]
  #   product = Product.find_by(name: input)
  #   render json: product.as_json
  # end

  def index
    products = Product.all
    render json: products.as_json
  end

  def show
    product_id = params["id"]
    product = Product.find(product_id)
    render json: product.as_json
  end

  def create
    product = Product.new(
      name: params["name"],
      price: params["price"],
      image_url: params["image_url"],
      description: params["description"],
    )
    product.save
    render json: product.as_json
  end
end
