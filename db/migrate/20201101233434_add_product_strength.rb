class AddProductStrength < ActiveRecord::Migration[6.0]
  def change
    create_table :strengths do |t|
      t.string :name

      t.timestamps
  end

    add_column :products, :strength_id, :integer
    add_foreign_key :products, :strengths 
  end   
end 
