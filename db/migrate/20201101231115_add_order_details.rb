class AddOrderDetails < ActiveRecord::Migration[6.0]
  def change
    create_table :orderdetails do |t|
      t.string :quantity

      t.timestamps
    end
  end
end
