class OrdersController < ApplicationController
  before_action :authenticate_user

  def create
    @product = Product.find_by(id: params[:product_id])
    quantity = params[:quantity]
    subtotal = quantity * @product.price
    tax = subtotal * product.tax
    total = subtotal + tax
    order = Order.new(
      user_id: current_user.id,
      product_id: product_id,
      quantity: quantity,
      subtotal: subtotal,
      tax: tax,
      total: total,
    )

    render :show
  end

  def show
    @order = current_user.orders.find_by(id: params[:id])

    :show
  end

  def index
    @orders = current_user.orders

    :index
  end
end
