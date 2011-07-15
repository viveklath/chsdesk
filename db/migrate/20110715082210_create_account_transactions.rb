class CreateAccountTransactions < ActiveRecord::Migration
  def change
    create_table :account_transactions, :primary_key => "transaction_code", :force => true  do |t|
      t.date :transaction_date
      t.string :debit_ledger_code,      :limit => 45
      t.integer :debit_amount
      t.string :credit_ledger_code,     :limit => 45
      t.integer :credit_amount
      t.string :transaction_narration,  :limit => 200
      t.integer :ledger_balance
      t.string :transaction_type,       :limit => 45

      t.timestamps
    end
    add_index "account_transactions", ["credit_ledger_code"], :name => "fk_credit_ledger_code"
    add_index "account_transactions", ["debit_ledger_code"], :name => "fk_debit_ledger_code"

  end
end
