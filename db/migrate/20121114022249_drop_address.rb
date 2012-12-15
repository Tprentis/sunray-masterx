class DropAddress < ActiveRecord::Migration
  def up
    drop_table :addresses
  end

  def down
    raise ActiveRecord::IrreversibleMigration, "Sorry You cannot restore addresses"
  end
end
