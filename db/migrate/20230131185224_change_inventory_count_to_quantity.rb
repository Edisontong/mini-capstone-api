class ChangeInventoryCountToQuantity < ActiveRecord::Migration[7.0]
  def change
    remove_column :products, :inventory_count, :integer
    add_column :products, :quantity, :integer
  end
end
