class CreateCommittees < ActiveRecord::Migration
  def change
    create_table :committees, :id => false, :force => true  do |t|
      t.integer :member_id,   :null => false
      t.integer :society_id,  :null => false
      t.string :desgination,  :limit => 100, :null => false
      t.date :start_date,     :null => false
      t.date :end_date,       :null => false

      t.timestamps
    end
      add_index "committees", ["society_id"], :name => "society_id"
  end
end
