class CreateLedgerDetails < ActiveRecord::Migration
  def change
    create_table :ledger_details, :primary_key => "ledger_code", :force => true  do |t|
      t.integer :account_group_code
      t.string :ledger_name,          :limit => 45
      t.string :opening_balance,      :limit => 45

      t.timestamps
    end
      add_index "ledger_details", ["account_group_code"], :name => "fk_account_group"
  end
end
