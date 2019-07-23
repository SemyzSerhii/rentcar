class CreateSalons < ActiveRecord::Migration[6.0]
  def change
    create_table :salons do |t|

      t.timestamps
    end
  end
end
