class Committee < ActiveRecord::Base
end
# == Schema Information
#
# Table name: committees
#
#  member_id   :integer(4)      not null
#  society_id  :integer(4)      not null
#  desgination :string(100)     not null
#  start_date  :date            not null
#  end_date    :date            not null
#  created_at  :datetime
#  updated_at  :datetime
#

