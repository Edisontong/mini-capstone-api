class Product < ApplicationRecord
  has_many :carted_products
  has_many :orders, through: :carted_products
  belongs_to :supplier
  has_many :orders
  has_many :category_products
  has_many :categories, through: :category_products

  # validates :supplier_id, presence: true
  validates :name, presence: true
  validates :name, uniqueness: true
  validates :price, presence: true
  validates :price, numericality: { greater_than: 0 }
  validates :description, presence: true
  validates :description, length: { in: 10..500 }

  def is_discounted?
    price <= 10
  end

  def tax
    price * 0.09
  end

  def total
    price + tax
  end

  # def supplier
  #   Supplier.find_by(id: supplier_id)
  # end

  def images
    Image.where(product_id: id)
  end

  # line 5 does this=>
  # def categories
  #   category_product.map do |category_product|
  #     category_product.category
  #   end
  # end
end
