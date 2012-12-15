class Account < ActiveRecord::Base 
  has_many :users
  has_many :addresses
  has_many :branches
  has_many :regions
  attr_accessible :name, :phone, :fax, :website, :logo, :description, :addresses_attributtes
  accepts_nested_attributes_for :addresses 

  def primary_address
    addresses.where(:address_type => 'primary').first
  end

end

# == Schema Information
#
# Table name: shipping_addresses
# create_table "accounts", :force => true do |t|
#    t.string   "name",              :default => "", :null => false
#    t.string   "logo"
#    t.text     "description"
#    t.string   "phone"
#    t.string   "fax"
#    t.string   "website"
#    t.string   "active"
#    t.datetime "created_at",                        :null => false
#    t.datetime "updated_at",                        :null => false
#    t.integer  "representative_id"
#    t.string   "how_did_you_hear"
#    t.string   "contract_file"
#    t.string   "specific_notes"
#    t.string   "priviledges"
#    t.integer  "billing_option"

#ROUTES

   # admins_accounts GET    /admins/accounts(.:format)            admins/accounts#index
   #                        POST   /admins/accounts(.:format)            admins/accounts#create
   #     new_admins_account GET    /admins/accounts/new(.:format)        admins/accounts#new
   #    edit_admins_account GET    /admins/accounts/:id/edit(.:format)   admins/accounts#edit
   #         admins_account GET    /admins/accounts/:id(.:format)        admins/accounts#show
   #                        PUT    /admins/accounts/:id(.:format)        admins/accounts#update
   #                        DELETE /admins/accounts/:id(.:format)        admins/accounts#destroy

