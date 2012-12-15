class CreateBranches < ActiveRecord::Migration
  def up
    create_table(:branches) do |t|
      t.string    :name, :null => false, :default => ""
      t.integer   :account_id
      t.boolean   :active, :default => true
      t.timestamps
    end
  end

  def down
    drop_table :branches
  end
end
