class AddMarginsToDocumentpart < ActiveRecord::Migration
  def change
    add_column :documentparts, :top_margin, :integer
    add_column :documentparts, :bottom_margin, :integer
    add_column :documentparts, :left_margin, :integer
    add_column :documentparts, :right_margin, :integer            
  end
  
  def down
    remove_column :documentparts, :top_margin
    remove_column :documentparts, :bottom_margin
    remove_column :documentparts, :left_margin
    remove_column :documentparts, :right_margin            
    
  end
end
