class ChangeCategorySpelling < ActiveRecord::Migration[7.0]
  def change
    remove_column :category_products, :catagory_id, :integer
    add_column :category_products, :category_id, :integer
  end
end
