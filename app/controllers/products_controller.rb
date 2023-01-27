class ProductsController < ApplicationController
  def show
    @product = Product.find_by(id: params["id"])
    render :show
  end

  def index
    @products = Product.all
    render :index
  end

  def create
    @product = Product.create(
      name: params["name"],
      price: params["price"],
      description: params["description"],
      supplier_id: params[:supplier_id],
    )
    if @product.valid?
      if params[:image_url]
        Image.create(url: params[:images_url], product_id: @product.id)
      end
      render :show
    else
      render json: { errors: @product.errors.full_messages }, status: :unprocessable_entity
    end
  end

  def update
    @product = Product.find_by(id: params["id"])
    @product.update(
      name: params["name"] || @product.name,
      price: params["price"] || @product.price,
      description: params["description"] || @product.description,
      supplier_id: params["supplier_id"] || @product.supplier_id,
    )
    if @product.valid?
      render :show
    else
      render json: { errors: @product.errors.full_messages }, status: :unprocessable_entity
    end
  end

  def destroy
    product = Product.find_by(id: params["id"])
    product.destroy
    render json: { mesage: "The product has been obliterated!!!!!!!!!" }
  end
end
