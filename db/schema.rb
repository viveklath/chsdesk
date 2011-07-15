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

ActiveRecord::Schema.define(:version => 20110715093907) do

  create_table "account_groups", :primary_key => "account_group_code", :force => true do |t|
    t.string   "primary_account_group", :limit => 50, :null => false
    t.string   "account_group_name",    :limit => 45
    t.string   "sub_account_group",     :limit => 45
    t.string   "is_sub_ledger"
    t.string   "use_gross_profit"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "account_transactions", :primary_key => "transaction_code", :force => true do |t|
    t.date     "transaction_date"
    t.string   "debit_ledger_code",     :limit => 45
    t.integer  "debit_amount"
    t.string   "credit_ledger_code",    :limit => 45
    t.integer  "credit_amount"
    t.string   "transaction_narration", :limit => 200
    t.integer  "ledger_balance"
    t.string   "transaction_type",      :limit => 45
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "account_transactions", ["credit_ledger_code"], :name => "credit_ledger_code"
  add_index "account_transactions", ["debit_ledger_code"], :name => "debit_ledger_code"

  create_table "bill_details", :id => false, :force => true do |t|
    t.integer  "bill_head_id",                                              :null => false
    t.integer  "bill_id",                                                   :null => false
    t.string   "head",         :limit => 100,                               :null => false
    t.decimal  "net_amount",                  :precision => 2, :scale => 0, :null => false
    t.boolean  "mandatory",                                                 :null => false
    t.boolean  "is_sub_head"
    t.decimal  "service_tax",                 :precision => 2, :scale => 0
    t.decimal  "gross_amount",                :precision => 2, :scale => 0
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "bill_details", ["bill_id"], :name => "fk_bill_det_bill_id"

  create_table "bill_setups", :primary_key => "bill_setup_id", :force => true do |t|
    t.integer  "society_id"
    t.string   "head_name",        :limit => 100
    t.decimal  "rate_sqft_month",                 :precision => 2, :scale => 0
    t.decimal  "rate_unit_month",                 :precision => 2, :scale => 0
    t.decimal  "service_tax_pct",                 :precision => 2, :scale => 0
    t.integer  "days_to_discount"
    t.decimal  "discount_pct",                    :precision => 2, :scale => 0
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "bill_setups", ["society_id"], :name => "fk_bill_setup_society_id"

  create_table "bill_transactions", :id => false, :force => true do |t|
    t.integer  "bill_id",          :null => false
    t.datetime "transaction_date", :null => false
    t.boolean  "email"
    t.boolean  "pdf"
    t.integer  "user_member_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "bill_transactions", ["bill_id"], :name => "fk_bill_tran_bill_id"
  add_index "bill_transactions", ["user_member_id"], :name => "fk_bill_tran_member_id"

  create_table "bills", :primary_key => "bill_id", :force => true do |t|
    t.integer  "unit_id",                                                          :null => false
    t.string   "bill_number",          :limit => 45,                               :null => false
    t.date     "from_date",                                                        :null => false
    t.date     "to_date",                                                          :null => false
    t.date     "bill_generation_date",                                             :null => false
    t.decimal  "current_bill_charges",               :precision => 2, :scale => 0
    t.decimal  "penalty_interest",                   :precision => 2, :scale => 0
    t.decimal  "discount_amount",                    :precision => 2, :scale => 0
    t.decimal  "total_bill_amount",                  :precision => 2, :scale => 0
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "bills", ["unit_id"], :name => "fk_unit_id"

  create_table "committees", :id => false, :force => true do |t|
    t.integer  "member_id",                  :null => false
    t.integer  "society_id",                 :null => false
    t.string   "desgination", :limit => 100, :null => false
    t.date     "start_date",                 :null => false
    t.date     "end_date",                   :null => false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "committees", ["society_id"], :name => "society_id"

  create_table "ledger_details", :primary_key => "ledger_code", :force => true do |t|
    t.integer  "account_group_code"
    t.string   "ledger_name",        :limit => 45
    t.string   "opening_balance",    :limit => 45
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "ledger_details", ["account_group_code"], :name => "fk_account_group"

  create_table "logins", :force => true do |t|
    t.integer  "member_id"
    t.string   "email"
    t.string   "password_digest"
    t.string   "role"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "auth_token"
    t.string   "password_reset_token"
    t.datetime "password_reset_sent_at"
  end

  create_table "members", :primary_key => "member_id", :force => true do |t|
    t.integer  "unit_id"
    t.string   "first_name",              :limit => 200,                    :null => false
    t.string   "last_name",               :limit => 200,                    :null => false
    t.string   "suffix",                  :limit => 10,                     :null => false
    t.date     "date_of_birth",                                             :null => false
    t.string   "home_phone",              :limit => 15
    t.string   "mobile_phone",            :limit => 15,                     :null => false
    t.string   "work_phone",              :limit => 15
    t.string   "email_id",                :limit => 100,                    :null => false
    t.string   "gender",                  :limit => 10,                     :null => false
    t.binary   "member_photo"
    t.binary   "photo_id"
    t.string   "primary_address_line1",   :limit => 100,                    :null => false
    t.string   "primary_address_line2",   :limit => 100,                    :null => false
    t.string   "primary_address_city",    :limit => 100,                    :null => false
    t.string   "primary_address_pincode", :limit => 20,                     :null => false
    t.string   "primary_address_state",   :limit => 50,                     :null => false
    t.string   "primary_address_country", :limit => 50,                     :null => false
    t.boolean  "is_owner",                               :default => true,  :null => false
    t.boolean  "live_here",                              :default => true,  :null => false
    t.boolean  "email_bills",                            :default => true,  :null => false
    t.boolean  "sms_bills",                              :default => true,  :null => false
    t.boolean  "sms_reciept",                            :default => true,  :null => false
    t.boolean  "noc_charges",                            :default => false, :null => false
    t.boolean  "parking_charges",                        :default => false, :null => false
    t.boolean  "is_mcmember",                            :default => false, :null => false
    t.date     "membership_date"
    t.date     "last_signin",                                               :null => false
    t.boolean  "verification",                           :default => false, :null => false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "members", ["email_id"], :name => "index_members_on_email_id", :unique => true
  add_index "members", ["unit_id"], :name => "index_members_on_unit_id", :unique => true

  create_table "societies", :primary_key => "society_id", :force => true do |t|
    t.string   "society_name",            :limit => 200, :null => false
    t.string   "society_address_line1",   :limit => 100, :null => false
    t.string   "society_address_line2",   :limit => 100, :null => false
    t.string   "society_city",            :limit => 50,  :null => false
    t.string   "society_pincode",         :limit => 20,  :null => false
    t.string   "society_state",           :limit => 100, :null => false
    t.string   "society_country",         :limit => 100, :null => false
    t.string   "govt_address_line",       :limit => 50,  :null => false
    t.string   "govt_address_line2",      :limit => 50,  :null => false
    t.string   "govt_address_city",       :limit => 50,  :null => false
    t.string   "govt_address_pincode",    :limit => 20,  :null => false
    t.string   "govt_address_plotnumber", :limit => 50,  :null => false
    t.string   "regsitration_number",     :limit => 50,  :null => false
    t.string   "govt_ward_number",        :limit => 50
    t.integer  "number_of_flats",                        :null => false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "transaction_type_masters", :primary_key => "transaction_type_id", :force => true do |t|
    t.string   "transaction_type",        :limit => 45
    t.string   "transaction_type_prefix", :limit => 45
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
