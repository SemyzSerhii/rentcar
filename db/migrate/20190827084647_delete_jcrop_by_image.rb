class DeleteJcropByImage < ActiveRecord::Migration[6.0]
  def change
    remove_column :images, :crop_x
    remove_column :images, :crop_y
    remove_column :images, :crop_w
    remove_column :images, :crop_h
  end
end
