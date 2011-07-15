class CreateTransactionTypeMasters < ActiveRecord::Migration
  def change
    create_table :transaction_type_masters, :primary_key => "transaction_type_id", :force => true  do |t|
      t.string :transaction_type,           :limit => 45
      t.string :transaction_type_prefix,    :limit => 45

      t.timestamps
    end
  end
end
