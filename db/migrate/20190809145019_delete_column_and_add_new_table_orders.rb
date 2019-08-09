class DeleteColumnAndAddNewTableOrders < ActiveRecord::Migration[6.0]
  def change
    remove_belongs_to :orders, :salons
    add_reference :orders, :customers, foreign_key: true
  end
end
