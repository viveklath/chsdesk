class CreateBillDetails < ActiveRecord::Migration
  def change
    create_table :bill_details, :id => false, :force => true  do |t|
      t.integer :bill_head_id,  :null => false
      t.integer :bill_id,       :null => false
      t.string :head,           :limit => 100,  :null => false
      t.decimal :net_amount,    :precision => 2, :scale => 0,  :null => false
      t.boolean :mandatory,     :null => false
      t.boolean :is_sub_head
      t.decimal :service_tax,   :precision => 2, :scale => 0 
      t.decimal :gross_amount,  :precision => 2, :scale => 0 

      t.timestamps
    end
      add_index "bill_details", ["bill_id"], :name => "fk_bill_det_bill_id"

  end
end
