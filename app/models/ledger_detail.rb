class LedgerDetail < ActiveRecord::Base
end
# == Schema Information
#
# Table name: ledger_details
#
#  ledger_code        :integer(4)      not null, primary key
#  account_group_code :integer(4)
#  ledger_name        :string(45)
#  opening_balance    :string(45)
#  created_at         :datetime
#  updated_at         :datetime
#

