class CreateCars < ActiveRecord::Migration[6.0]
  def change
    create_table :cars do |t|
      t.string :color
      t.string :fuel_type
      t.integer :age
      t.float :engine
      t.boolean :enum_status
      t.belongs_to :salon, foreign_key: true

      t.timestamps
    end
  end
end
