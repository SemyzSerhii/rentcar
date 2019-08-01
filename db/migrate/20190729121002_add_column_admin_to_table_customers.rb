class AddColumnAdminToTableCustomers < ActiveRecord::Migration[6.0]
  def change
    add_column :customers, :admin, :boolean, default: false
  end
end
