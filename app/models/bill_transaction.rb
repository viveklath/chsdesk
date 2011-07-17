class BillTransaction < ActiveRecord::Base
end
# == Schema Information
#
# Table name: bill_transactions
#
#  bill_id          :integer(4)      not null
#  transaction_date :datetime        not null
#  email            :boolean(1)
#  pdf              :boolean(1)
#  user_member_id   :integer(4)
#  created_at       :datetime
#  updated_at       :datetime
#

