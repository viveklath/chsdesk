class Member < ActiveRecord::Base
  
  validates_uniqueness_of :email_id
  validates :email_id, :email_format => true
  validates_presence_of :mobile_phone, :first_name, 
  :last_name, :primary_address_line1, :primary_address_city, 
  :primary_address_pincode, :primary_address_state, :primary_address_country
   
end
# == Schema Information
#
# Table name: members
#
#  member_id               :integer(4)      not null, primary key
#  unit_id                 :integer(4)
#  first_name              :string(200)     not null
#  last_name               :string(200)     not null
#  suffix                  :string(10)      not null
#  date_of_birth           :date            not null
#  home_phone              :string(15)
#  mobile_phone            :string(15)      not null
#  work_phone              :string(15)
#  email_id                :string(100)     not null
#  gender                  :string(10)      not null
#  member_photo            :binary
#  photo_id                :binary
#  primary_address_line1   :string(100)     not null
#  primary_address_line2   :string(100)     not null
#  primary_address_city    :string(100)     not null
#  primary_address_pincode :string(20)      not null
#  primary_address_state   :string(50)      not null
#  primary_address_country :string(50)      not null
#  is_owner                :boolean(1)      default(TRUE), not null
#  live_here               :boolean(1)      default(TRUE), not null
#  email_bills             :boolean(1)      default(TRUE), not null
#  sms_bills               :boolean(1)      default(TRUE), not null
#  sms_reciept             :boolean(1)      default(TRUE), not null
#  noc_charges             :boolean(1)      default(FALSE), not null
#  parking_charges         :boolean(1)      default(FALSE), not null
#  is_mcmember             :boolean(1)      default(FALSE), not null
#  membership_date         :date
#  last_signin             :date            not null
#  verification            :boolean(1)      default(FALSE), not null
#  created_at              :datetime
#  updated_at              :datetime
#

