class ChangeColumns < ActiveRecord::Migration[6.0]
  def change

    add_column :customers, :firstname, :string
    add_column :customers, :lastname, :string
    add_column :customers, :company_name, :string
    add_column :customers, :contact_type, :string
    add_column :customers, :active, :boolean
    add_column :customers, :notes, :string

    add_column :products, :price, :float
    add_column :products, :description, :float

    remove_column :customers, :name, :string
    
  end
end
