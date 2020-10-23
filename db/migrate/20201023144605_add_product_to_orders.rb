class AddProductToOrders < ActiveRecord::Migration[6.0]
  def change

    add_column :units, :category_id, :integer
    add_column :categories, :product_id, :integer
    add_column :orders, :customer_id, :integer

    add_foreign_key :categories, :products
    add_foreign_key :units, :categories
    add_foreign_key :orders, :customers

  end
end
