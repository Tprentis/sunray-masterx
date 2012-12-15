class AddExtrafieldsToAccount < ActiveRecord::Migration
  def change
  	add_column :accounts, :representative_id, :integer
  	add_column :accounts, :how_did_you_hear, :string
  	add_column :accounts, :contract_file, :string
  	add_column :accounts, :specific_notes, :string
  	add_column :accounts, :priviledges, :string
  	add_column :accounts, :billing_option, :integer
  end

  def down
  	remove_column :accounts, :representative_id, :integer
  	remove_column :accounts, :how_did_you_hear, :string
  	remove_column :accounts, :contract_file, :string
  	remove_column :accounts, :specific_notes, :string
  	remove_column :accounts, :priviledges, :string
  	remove_column :accounts, :billing_option, :integer
  end
end
