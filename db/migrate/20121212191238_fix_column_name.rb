class FixColumnName < ActiveRecord::Migration
  def change
    rename_column :documents, :type, :document_legal_name
  end
end  