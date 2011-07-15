class CreateBillTransactions < ActiveRecord::Migration
  def change
    create_table :bill_transactions, :id => false, :force => true  do |t|
      t.integer :bill_id,             :null => false
      t.datetime :transaction_date,   :null => false
      t.boolean :email
      t.boolean :pdf
      t.integer :user_member_id

      t.timestamps
    end
      add_index "bill_transactions", ["bill_id"], :name => "fk_bill_tran_bill_id"
      add_index "bill_transactions", ["user_member_id"], :name => "fk_bill_tran_member_id"

  end
end
