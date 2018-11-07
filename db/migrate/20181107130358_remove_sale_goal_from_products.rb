class RemoveSaleGoalFromProducts < ActiveRecord::Migration[5.2]
  def change
    remove_column :products, :sale_goal, :integer
  end
end
