class RemoveNameFromDocuments < ActiveRecord::Migration
# this appears backwards, but it is not.
# This migration removes the original :name column in the 'up' method
# and adds the columns back in for the 'down' method.  
  def up
    remove_column :documents, :name
  end

  def down
    add_column :documents, :name, :string
  end
end
