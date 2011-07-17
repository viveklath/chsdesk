class Society < ActiveRecord::Base
  validates_uniqueness_of :society_name
  validates :society_name, :society_address_line1, :society_city, 
    :society_state, :society_pincode, :society_country, :number_of_flats, :presence => true
    
end
# == Schema Information
#
# Table name: societies
#
#  society_id              :integer(4)      not null, primary key
#  society_name            :string(200)     not null
#  society_address_line1   :string(100)     not null
#  society_address_line2   :string(100)     not null
#  society_city            :string(50)      not null
#  society_pincode         :string(20)      not null
#  society_state           :string(100)     not null
#  society_country         :string(100)     not null
#  govt_address_line       :string(50)      not null
#  govt_address_line2      :string(50)      not null
#  govt_address_city       :string(50)      not null
#  govt_address_pincode    :string(20)      not null
#  govt_address_plotnumber :string(50)      not null
#  regsitration_number     :string(50)      not null
#  govt_ward_number        :string(50)
#  number_of_flats         :integer(4)      not null
#  created_at              :datetime
#  updated_at              :datetime
#

