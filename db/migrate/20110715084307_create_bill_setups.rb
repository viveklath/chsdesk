class CreateBillSetups < ActiveRecord::Migration
  def change
    create_table :bill_setups, :primary_key => "bill_setup_id", :force => true  do |t|
      t.integer :society_id
      t.string :head_name,        :limit => 100
      t.decimal :rate_sqft_month, :precision => 2, :scale => 0
      t.decimal :rate_unit_month, :precision => 2, :scale => 0
      t.decimal :service_tax_pct, :precision => 2, :scale => 0
      t.integer :days_to_discount
      t.decimal :discount_pct,    :precision => 2, :scale => 0

      t.timestamps
    end
      add_index "bill_setups", ["society_id"], :name => "fk_bill_setup_society_id"


  end
end
