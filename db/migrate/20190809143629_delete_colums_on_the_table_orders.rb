class DeleteColumsOnTheTableOrders < ActiveRecord::Migration[6.0]
  def change
    remove_column :orders, :name
    remove_column :orders, :phone
  end
end
