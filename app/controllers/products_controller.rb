class ProductsController < ApplicationController
  def index
    products = Product.all
    render json: products
  end

  def show
    product_id = params[:id]
    product = Product.find(product_id)
    render json: product
  end

  def create
    product = Product.new(
      name: params["name"],
      price: params["price"],
      image_url: params["image_url"],
      description: params["description"],
      stock: params["stock"],
      supplier_id: params["supplier_id"],
    )
    if product.save
      render json: product
    else
      render json: { errors: product.errors.full_messages }, status: 418  # teapot
    end
  end

  def update
    product = Product.find(params[:id])
    product.name = params["name"] || product.name
    product.price = params["price"] || product.price
    product.image_url = params["image_url"] || product.image_url
    product.description = params["description"] || product.description
    product.stock = params["stock"] || product.stock
    product.supplier_id = params["supplier_id"] || product.supplier_id
    if product.save
      render json: product
    else
      render json: { errors: product.errors.full_messages }, status: :unprocessable_entity
    end
  end

  def destroy
    product = Product.find(params[:id])
    product.destroy
    render json: { message: "Product destroyed!" }
  end
end
