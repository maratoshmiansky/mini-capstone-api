class OrdersController < ApplicationController
  def index
    if current_user
      # orders = Order.all
      orders = current_user.orders.all
      render json: orders
    else
      render json: [], status: :unauthorized
    end
  end

  def show
    if current_user
      order = current_user.orders.find_by(id: params[:id])  # only want to see the current logged in user's order
      render json: order
    else
      render json: [], status: :unauthorized
    end
  end

  def create
    if current_user
      product = Product.find_by(id: params[:product_id])
      calculated_subtotal = product.price * params[:quantity].to_i
      calculated_tax = calculated_subtotal * 0.09
      calculated_total = calculated_subtotal + calculated_tax
      order = Order.new(
        user_id: current_user.id,
        product_id: params[:product_id],
        quantity: params[:quantity],
        subtotal: calculated_subtotal,
        tax: calculated_tax,
        total: calculated_total,
      )
    else
      render json: [], status: :unauthorized
    end
    if order.save
      render json: { message: "Order created successfully" }, status: :created
    else
      render json: { errors: order.errors.full_messages }, status: :bad_request
    end
  end
end
