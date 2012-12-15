class CreateRegions < ActiveRecord::Migration
  def up
    create_table(:regions) do |t|
      t.string :name, :null => false, :default => ""
      t.integer :account_id
      t.boolean :active, :default => true
      t.timestamps
    end
  end

  def down
    drop_table :regions
  end
end
