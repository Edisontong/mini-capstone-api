class AddAdminToUser < ActiveRecord::Migration[7.0]
  def change
    remove_column :users, :admim, :boolean
    add_column :users, :admin, :boolean, default: false
  end
end
