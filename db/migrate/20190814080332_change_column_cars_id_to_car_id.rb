class ChangeColumnCarsIdToCarId < ActiveRecord::Migration[6.0]
  def change
    remove_reference :salons, :cars, foreign_key: true
    add_reference :salons, :car, foreign_key: true
  end
end
