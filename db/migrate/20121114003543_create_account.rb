class CreateAccount < ActiveRecord::Migration
  def up
    create_table(:accounts) do |t|
      t.string    :name, :null => false, :default => ""
      t.string    :logo
      t.text      :description
      t.string    :phone
      t.string    :fax
      t.string    :website
      t.string    :active
      t.timestamps
    end
  end

  def down
    drop_table :accounts
  end
end
