class AddColumnNameToTableSalons < ActiveRecord::Migration[6.0]
  def change
    add_column :salons, :name, :string
  end
end
