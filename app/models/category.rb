class Category < ApplicationRecord
  has_many :category_products
  has_many :products, through: :category_products


  #line three does this=>
  # def products
  #   category_products.map do |category_product|
  #     category_product.product
  #   end
  # end
end
