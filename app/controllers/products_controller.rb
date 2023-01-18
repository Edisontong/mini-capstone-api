class ProductsController < ApplicationController
  def single_product
    p hello
  end

  def all_products
    render json: {}
  end
end
