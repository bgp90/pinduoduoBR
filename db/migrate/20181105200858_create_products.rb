class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
      t.string :name
      t.string :description
      t.string :supplier
      t.decimal :current_price
      t.decimal :avg_price
      t.decimal :price_goal
      t.integer :sold_count
      t.integer :sale_goal
      t.integer :remaining_items

      t.timestamps
    end
  end
end
