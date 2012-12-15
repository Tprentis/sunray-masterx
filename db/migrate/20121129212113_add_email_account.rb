class AddEmailAccount < ActiveRecord::Migration
  def change
  	add_column :accounts, :email, :string
  end

  def down
  	remove_column :accounts, :email
  end
end
