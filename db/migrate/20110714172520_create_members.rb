class CreateMembers < ActiveRecord::Migration
  def change
    create_table :members, :primary_key => "member_id", :force => true  do |t|
      t.integer :unit_id
      t.string :first_name,               :limit => 200, :null => false
      t.string :last_name,                :limit => 200, :null => false
      t.string :suffix,                   :limit => 10, :null => false
      t.date :date_of_birth,                             :null => false
      t.string :home_phone,               :limit => 15
      t.string :mobile_phone,             :limit => 15,  :null => false
      t.string :work_phone,               :limit => 15
      t.string :email_id,                 :limit => 100,  :null => false
      t.string :gender,                   :limit => 10,  :null => false
      t.binary :member_photo
      t.binary :photo_id
      t.string :primary_address_line1,    :limit => 100, :null => false
      t.string :primary_address_line2,    :limit => 100, :null => false
      t.string :primary_address_city,     :limit => 100, :null => false
      t.string :primary_address_pincode,  :limit => 20, :null => false
      t.string :primary_address_state,    :limit => 50, :null => false
      t.string :primary_address_country,  :limit => 50, :null => false
      t.boolean :is_owner,                :default => true,  :null => false
      t.boolean :live_here,               :default => true,  :null => false
      t.boolean :email_bills,             :default => true,  :null => false
      t.boolean :sms_bills,               :default => true,  :null => false
      t.boolean :sms_reciept,             :default => true,  :null => false
      t.boolean :noc_charges,             :default => false,  :null => false
      t.boolean :parking_charges,         :default => false,  :null => false
      t.boolean :is_mcmember,             :default => false,  :null => false
      t.date :membership_date
      t.date :last_signin,                                    :null => false
      t.boolean :verification,             :default => false,  :null => false
      
      t.timestamps
    end
    add_index "members", ["email_id"],  :unique => true
    add_index "members", ["unit_id"],  :unique => true
  end
end
