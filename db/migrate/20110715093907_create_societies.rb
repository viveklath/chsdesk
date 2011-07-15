class CreateSocieties < ActiveRecord::Migration
  def change
    create_table :societies, :primary_key => "society_id", :force => true  do |t|
      t.string :society_name,            :limit => 200, :null => false
      t.string :society_address_line1,   :limit => 100, :null => false
      t.string :society_address_line2,   :limit => 100, :null => false
      t.string :society_city,            :limit => 50, :null => false
      t.string :society_pincode,         :limit => 20, :null => false
      t.string :society_state,           :limit => 100, :null => false
      t.string :society_country,         :limit => 100, :null => false
      t.string :govt_address_line,       :limit => 50,  :null => false
      t.string :govt_address_line2,      :limit => 50,  :null => false
      t.string :govt_address_city,       :limit => 50,  :null => false
      t.string :govt_address_pincode,    :limit => 20,  :null => false
      t.string :govt_address_plotnumber, :limit => 50,  :null => false
      t.string :regsitration_number,     :limit => 50,  :null => false
      t.string :govt_ward_number,        :limit => 50
      t.integer :number_of_flats,        :null => false
      t.timestamps
    end
  end
end
