class Address < ActiveRecord::Base 
  belongs_to :account
  attr_accessible :account_id, :name, :address, :address2, :city, :state, :zip, :phone, :address_type, :created_at, :updated_at
end
