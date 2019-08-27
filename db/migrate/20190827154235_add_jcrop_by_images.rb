class AddJcropByImages < ActiveRecord::Migration[6.0]
  def change
    add_column :images, :crop_x, :string
    add_column :images, :crop_y, :string
    add_column :images, :crop_w, :string
    add_column :images, :crop_h, :string
  end
end
