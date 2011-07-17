require 'test_helper'

class AccountGroupTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
# == Schema Information
#
# Table name: account_groups
#
#  account_group_code    :integer(4)      not null, primary key
#  primary_account_group :string(50)      not null
#  account_group_name    :string(45)
#  sub_account_group     :string(45)
#  is_sub_ledger         :string(255)
#  use_gross_profit      :string(255)
#  created_at            :datetime
#  updated_at            :datetime
#

