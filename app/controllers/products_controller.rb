class ProductsController < ApplicationController
  def all_products
    render json: Product.all.as_json
  end

  def product1
    render json: Product.find_by(name: "Widget").as_json
  end

  def product2
    render json: Product.find_by(name: "Thingy").as_json
  end

  def product3
    render json: Product.find_by(name: "Gadget").as_json
  end

  def any_product
    input = params["name"]
    product = Product.find_by(name: input)
    render json: product.as_json
  end
end
