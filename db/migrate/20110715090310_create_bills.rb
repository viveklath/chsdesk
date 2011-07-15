class CreateBills < ActiveRecord::Migration
  def change
    create_table :bills, :primary_key => "bill_id", :force => true  do |t|
      t.integer :unit_id,               :null => false
      t.string :bill_number,            :limit => 45,  :null => false
      t.date :from_date,                :null => false
      t.date :to_date,                  :null => false
      t.date :bill_generation_date,     :null => false
      t.decimal :current_bill_charges,  :precision => 2, :scale => 0
      t.decimal :penalty_interest,      :precision => 2, :scale => 0
      t.decimal :discount_amount,       :precision => 2, :scale => 0
      t.decimal :total_bill_amount,     :precision => 2, :scale => 0

      t.timestamps
    end
      add_index "bills", ["unit_id"], :name => "fk_unit_id"
  end
end
