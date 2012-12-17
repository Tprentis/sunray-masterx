# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20121216212551) do

  create_table "accounts", :force => true do |t|
    t.string   "name",              :default => "", :null => false
    t.string   "logo"
    t.text     "description"
    t.string   "phone"
    t.string   "fax"
    t.string   "website"
    t.string   "active"
    t.datetime "created_at",                        :null => false
    t.datetime "updated_at",                        :null => false
    t.integer  "representative_id"
    t.string   "how_did_you_hear"
    t.string   "contract_file"
    t.string   "specific_notes"
    t.string   "priviledges"
    t.integer  "billing_option"
    t.string   "email"
  end

  create_table "addresses", :force => true do |t|
    t.integer  "account_id"
    t.string   "name"
    t.string   "address"
    t.string   "address2"
    t.string   "city"
    t.string   "state"
    t.string   "zip"
    t.string   "phone"
    t.string   "address_type"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  create_table "admins", :force => true do |t|
    t.string   "email",                  :default => "", :null => false
    t.string   "encrypted_password",     :default => "", :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.string   "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string   "unconfirmed_email"
    t.integer  "failed_attempts",        :default => 0
    t.string   "unlock_token"
    t.datetime "locked_at"
    t.string   "authentication_token"
    t.datetime "created_at",                             :null => false
    t.datetime "updated_at",                             :null => false
    t.string   "first_name"
    t.string   "last_name"
  end

  add_index "admins", ["authentication_token"], :name => "index_admins_on_authentication_token", :unique => true
  add_index "admins", ["confirmation_token"], :name => "index_admins_on_confirmation_token", :unique => true
  add_index "admins", ["email"], :name => "index_admins_on_email", :unique => true
  add_index "admins", ["reset_password_token"], :name => "index_admins_on_reset_password_token", :unique => true
  add_index "admins", ["unlock_token"], :name => "index_admins_on_unlock_token", :unique => true

  create_table "branches", :force => true do |t|
    t.string   "name",       :default => "",   :null => false
    t.integer  "account_id"
    t.boolean  "active",     :default => true
    t.datetime "created_at",                   :null => false
    t.datetime "updated_at",                   :null => false
  end

  create_table "documentparents", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "documentparts", :force => true do |t|
    t.integer  "document_id"
    t.integer  "position"
    t.string   "part_paragraph_header"
    t.text     "part_content"
    t.datetime "created_at",            :null => false
    t.datetime "updated_at",            :null => false
    t.integer  "top_margin"
    t.integer  "bottom_margin"
    t.integer  "left_margin"
    t.integer  "right_margin"
  end

  create_table "documents", :force => true do |t|
    t.integer  "documentparent_id"
    t.string   "document_legal_name"
    t.string   "document_type"
    t.string   "state"
    t.decimal  "price",                   :precision => 10, :scale => 2
    t.string   "rules"
    t.text     "content"
    t.boolean  "soft_letter"
    t.boolean  "sunray_logo"
    t.boolean  "to_from_address"
    t.boolean  "usps_barcode"
    t.boolean  "ariela_signature"
    t.boolean  "add_completed_date"
    t.boolean  "add_todays_date"
    t.datetime "created_at",                                             :null => false
    t.datetime "updated_at",                                             :null => false
    t.decimal  "default_amount",          :precision => 8,  :scale => 2
    t.boolean  "signer"
    t.boolean  "delivery_date_on_notice"
    t.boolean  "balance_remaining"
    t.boolean  "total_amount_of_job"
    t.boolean  "use_default_amount"
  end

  create_table "profiles", :force => true do |t|
    t.string   "company_name"
    t.string   "company_logo"
    t.string   "phone"
    t.string   "fax"
    t.string   "website"
    t.string   "owners_name"
    t.string   "owners_email"
    t.integer  "sales_person"
    t.text     "job_description"
    t.integer  "multiple_region"
    t.integer  "multiple_branches"
    t.integer  "active"
    t.datetime "created_at",        :null => false
    t.datetime "updated_at",        :null => false
  end

  create_table "regions", :force => true do |t|
    t.string   "name",       :default => "",   :null => false
    t.integer  "account_id"
    t.boolean  "active",     :default => true
    t.datetime "created_at",                   :null => false
    t.datetime "updated_at",                   :null => false
  end

  create_table "users", :force => true do |t|
    t.string   "email",                  :default => "",    :null => false
    t.string   "encrypted_password",     :default => "",    :null => false
    t.string   "first_name"
    t.string   "last_name"
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                                :null => false
    t.datetime "updated_at",                                :null => false
    t.integer  "account_id"
    t.boolean  "is_owner",               :default => false
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token", :unique => true

end
