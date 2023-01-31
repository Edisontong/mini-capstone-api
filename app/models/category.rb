class Category < ApplicationRecord
  has_many :categoryproducts

  def products
    @products = Product.find_by(id: category_id)
  end
end
