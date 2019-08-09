class ChangeColumnAgeAndFuelTypeToBeString < ActiveRecord::Migration[6.0]
  def change
    change_column :cars, :age, :string
  end
end
