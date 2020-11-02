class AddDiscounts < ActiveRecord::Migration[6.0]
  def change
    create_table :discounts do |t|
      t.string :code
      t.string :description
      t.float :value

      t.timestamps
    end

    add_column :members, :discount_id, :integer
    add_column :orderdetails, :discount_id, :integer
    add_foreign_key :orderdetails, :discounts
    add_foreign_key :members, :discounts
  end
end
