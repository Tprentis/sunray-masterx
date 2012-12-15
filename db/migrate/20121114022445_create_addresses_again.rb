class CreateAddressesAgain < ActiveRecord::Migration
  def change
    create_table :addresses do |t|
      t.integer   :account_id
      t.string    :name
      t.string    :address
      t.string    :address2
      t.string    :city
      t.string    :state
      t.string    :zip
      t.string    :phone
      t.string    :address_type
      t.timestamps
    end
  end
end
