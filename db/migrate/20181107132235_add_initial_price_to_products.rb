class AddInitialPriceToProducts < ActiveRecord::Migration[5.2]
  def change
    add_column :products, :initial_price, :decimal
  end
end
