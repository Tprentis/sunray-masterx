class CreateAddresses < ActiveRecord::Migration
  def change
    create_table :addresses do |t|
      t.integer :profile_id
      t.string :address
      t.string :address2
      t.string :string
      t.integer :city
      t.integer :state
      t.string :zip
      t.string :contact_name
      t.string :phone
      t.integer :type_address_id

      t.timestamps
    end
  end
end
