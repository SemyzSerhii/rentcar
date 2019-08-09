class AddColumnInTableCars < ActiveRecord::Migration[6.0]
  def change
    add_column :cars, :brand, :string
    add_column :cars, :model, :string
  end
end
