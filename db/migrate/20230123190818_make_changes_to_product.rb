class MakeChangesToProduct < ActiveRecord::Migration[7.0]
  def change
    change_column :products, :description, :text
    change_column :products, :price, :decimal, precision: 9, scale: 2
    add_column :products, :top_seller, :boolean, default: true
    add_column :products, :inventory_count, :integer
  end
end
