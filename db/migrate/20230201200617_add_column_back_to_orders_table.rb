class AddColumnBackToOrdersTable < ActiveRecord::Migration[7.0]
  def change
    add_column :orders, :user_id, :integer
    remove_column :orders, :product_id, :integer
  end
end
