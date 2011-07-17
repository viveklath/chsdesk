class AccountTransaction < ActiveRecord::Base
end
# == Schema Information
#
# Table name: account_transactions
#
#  transaction_code      :integer(4)      not null, primary key
#  transaction_date      :date
#  debit_ledger_code     :string(45)
#  debit_amount          :integer(4)
#  credit_ledger_code    :string(45)
#  credit_amount         :integer(4)
#  transaction_narration :string(200)
#  ledger_balance        :integer(4)
#  transaction_type      :string(45)
#  created_at            :datetime
#  updated_at            :datetime
#

