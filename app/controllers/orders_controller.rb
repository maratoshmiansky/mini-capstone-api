class OrdersController < ApplicationController
  def index
    orders = Order.all
    render json: orders
  end

  def show
    if current_user
      order = current_user.orders.find_by(id: params[:id])  # only want to see the current logged in user's order
      render json: order
    else
      render json: []  # change this to show a not logged in error message
    end
  end

  def create
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
    if order.save
      render json: { message: "Order created successfully" }, status: :created
    else
      render json: { errors: order.errors.full_messages }, status: :bad_request
    end
  end
end