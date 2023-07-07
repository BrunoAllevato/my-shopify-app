class CreatePurchases < ActiveRecord::Migration[7.0]
  def change
    create_table :purchases do |t|
      t.string :sale_id
      t.float :sale_price
      t.string :buyer_id
      t.float :cashback_value
      t.references :customer, null: false, foreign_key: true
      t.references :coupon, null: false, foreign_key: true

      t.timestamps
    end
  end
end
