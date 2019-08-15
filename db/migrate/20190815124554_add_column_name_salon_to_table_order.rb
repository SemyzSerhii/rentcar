class AddColumnNameSalonToTableOrder < ActiveRecord::Migration[6.0]
  def change
    add_column :orders, :salon_name, :string
  end
end
