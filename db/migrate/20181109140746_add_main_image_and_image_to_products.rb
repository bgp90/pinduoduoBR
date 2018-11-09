class AddMainImageAndImageToProducts < ActiveRecord::Migration[5.2]
  def change
    add_column :products, :main_image, :string
    add_column :products, :image3, :string
  end
end
