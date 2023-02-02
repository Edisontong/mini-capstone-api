class CartedProductsController < ApplicationController
  def index
    @carted_product = CartedProduct.all
    render :index
  end

  def create
    @carted_product = CartedProduct.create(
      user_id: current_user.id,
      product_id: params[:product_id],
      quantity: params[:quantity],
      status: params[:status],
    )
    render :show
  end
end
