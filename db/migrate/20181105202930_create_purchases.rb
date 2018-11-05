class CreatePurchases < ActiveRecord::Migration[5.2]
  def change
    create_table :purchases do |t|
      t.datetime :date
      t.references :user, foreign_key: true
      t.references :product, foreign_key: true
      t.decimal :value

      t.timestamps
    end
  end
end
