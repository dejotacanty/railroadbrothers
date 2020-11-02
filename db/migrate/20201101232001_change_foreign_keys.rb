class ChangeForeignKeys < ActiveRecord::Migration[6.0]
  def change
    
    add_column :orderdetails, :product_id, :integer 
    add_foreign_key :orderdetails, :products
    add_column :orderdetails, :order_id, :integer
    add_foreign_key :orderdetails, :orders

    remove_column :categories, :product_id, :integer
    remove_column :categories, :unit_id, :integer
    remove_foreign_key :units, :categories

    add_column :products, :category_id, :integer
    add_foreign_key :products, :categories
  end
end
