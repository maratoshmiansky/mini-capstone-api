class ProductsController < ApplicationController
  before_action :authenticate_admin, except: [:index, :show]

  def index
    if params[:category]
      category = Category.find_by(name: params[:category])
      products = category.products
    else
      products = Product.all
    end
    # products = Product.all
    render json: products
  end

  def show
    product = Product.find(params[:id])
    render json: product
  end

  def create
    product = Product.new(
      name: params[:name],
      price: params[:price],
      image_url: params[:image_url],
      description: params[:description],
      stock: params[:stock],
      supplier_id: params[:supplier_id],
    )
    if product.save
      render json: product, status: :created
    else
      render json: { errors: product.errors.full_messages }, status: :unauthorized
    end
  end

  def update
    product = Product.find(params[:id])
    product.name = params[:name] || product.name
    product.price = params[:price] || product.price
    product.image_url = params[:image_url] || product.image_url
    product.description = params[:description] || product.description
    product.stock = params[:stock] || product.stock
    product.supplier_id = params[:supplier_id] || product.supplier_id
    if product.save
      render json: product, status: :created
    else
      render json: { errors: product.errors.full_messages }, status: :unauthorized
    end
  end

  def destroy
    product = Product.find(params[:id])
    product.destroy
    render json: { message: "Product destroyed!" }
  end
end
