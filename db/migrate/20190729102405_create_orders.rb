class CreateOrders < ActiveRecord::Migration[6.0]
  def change
    create_table :orders do |t|
      t.string :name
      t.integer :phone
      t.belongs_to :cars, foreign_key: true
      t.belongs_to :salons, foreign_key: true

      t.timestamps
    end
  end
end
