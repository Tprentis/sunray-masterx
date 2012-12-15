class AddDefaultAmountAndFixedRulesToDocument < ActiveRecord::Migration
def change
    add_column :documents, :default_amount, :decimal, :precision => 8, :scale => 2
    add_column :documents, :signer, :boolean
    add_column :documents, :delivery_date_on_notice, :boolean
    add_column :documents, :balance_remaining, :boolean
    add_column :documents, :total_amount_of_job, :boolean
    add_column :documents, :use_default_amount, :boolean
  end

  def down
    remove_column :documents, :default_amount
    remove_column :documents, :signer, :boolean
    remove_column :documents, :delivery_date_on_notice, :boolean
    remove_column :documents, :balance_remaining, :boolean
    remove_column :documents, :total_amount_of_job, :boolean
    remove_column :documents, :use_default_amount, :boolean
  end
end
