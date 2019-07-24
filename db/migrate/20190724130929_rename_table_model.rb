class RenameTableModel < ActiveRecord::Migration[6.0]
  def change
    rename_table :models, :authenticates
  end
end
