class OrdersController < ApplicationController
  # before_action :authenticate_user

  def index
    # orders = Order.all
    orders = current_user.orders  # only want to see the current logged in user's orders
    render json: orders
  end

  def show
    # order = Order.find_by(id: params[:id])
    order = current_user.orders.find_by(id: params[:id])  # only want to see the current logged in user's order
    render json: order
  end

  def create
    carted_products = current_user.carted_products.where(status: "carted")
    order = Order.new(
      user_id: current_user.id,
      # product_id: params[:product_id],
      # quantity: params[:quantity],
      # subtotal: calculated_subtotal,
      # tax: calculated_tax,
      # total: calculated_total,
    )
    if order.save
      carted_products.update_all(status: "purchased", order_id: order.id)
      order.money_math  # calculate subtotal, tax, total (AFTER the order is created)
      render json: { message: "Order created successfully" }, status: :created
    else
      render json: { errors: order.errors.full_messages }, status: :bad_request
    end
  end
end
