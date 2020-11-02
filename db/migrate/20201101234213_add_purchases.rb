class AddPurchases < ActiveRecord::Migration[6.0]
  def change
    create_table :purchases do |t|
      t.string :supplier_name
      t.datetime :date
      t.integer :amount
      t.text :contents
      
      t.timestamps
    end
  end
end
