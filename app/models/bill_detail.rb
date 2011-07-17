class BillDetail < ActiveRecord::Base
end
# == Schema Information
#
# Table name: bill_details
#
#  bill_head_id :integer(4)      not null
#  bill_id      :integer(4)      not null
#  head         :string(100)     not null
#  net_amount   :integer(2)      not null
#  mandatory    :boolean(1)      not null
#  is_sub_head  :boolean(1)
#  service_tax  :integer(2)
#  gross_amount :integer(2)
#  created_at   :datetime
#  updated_at   :datetime
#

