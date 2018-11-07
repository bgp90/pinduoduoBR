class RenameRemainingItemsToAvaiableItems < ActiveRecord::Migration[5.2]
  def change
    rename_column :products, :remaining_items, :avaiable_items
  end
end
