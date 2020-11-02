class AddMemberTypes < ActiveRecord::Migration[6.0]
  def change
    create_table :members do |t|
      t.string :type
      t.string :description

      t.timestamps
    end

    add_column :customers, :member_id, :integer
    add_foreign_key :customers, :members 
  end
end
