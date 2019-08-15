class AddColumnCustomerNameCustomerIdSalonNameCarNameToTableOrders < ActiveRecord::Migration[6.0]
  def change
    add_column :orders, :customer_name, :string
    add_column :orders, :car_brand, :string
    add_column :orders, :car_model, :string
    remove_reference :orders, :cars, foreign_key: true
    remove_reference :orders, :customers, foreign_key: true
    add_reference :orders, :car, foreign_key: true
    add_reference :orders, :customer, foreign_key: true
    add_reference :orders, :salon, foreign_key: true
  end
end
