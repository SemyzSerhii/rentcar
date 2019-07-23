class AddColumnIdCarts < ActiveRecord::Migration[6.0]
  def change
    add_reference :salons, :cars, foreign_key: true
  end
end
