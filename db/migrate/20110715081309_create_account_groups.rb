class CreateAccountGroups < ActiveRecord::Migration
  def change
    create_table :account_groups, :primary_key => "account_group_code", :force => true  do |t|
      t.string :primary_account_group,  :limit => 50, :null => false
      t.string :account_group_name,     :limit => 45
      t.string :sub_account_group,      :limit => 45
      t.string :is_sub_ledger
      t.string :use_gross_profit

      t.timestamps
    end
  end
end
