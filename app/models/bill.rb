class Bill < ActiveRecord::Base
end
# == Schema Information
#
# Table name: bills
#
#  bill_id              :integer(4)      not null, primary key
#  unit_id              :integer(4)      not null
#  bill_number          :string(45)      not null
#  from_date            :date            not null
#  to_date              :date            not null
#  bill_generation_date :date            not null
#  current_bill_charges :integer(2)
#  penalty_interest     :integer(2)
#  discount_amount      :integer(2)
#  total_bill_amount    :integer(2)
#  created_at           :datetime
#  updated_at           :datetime
#

