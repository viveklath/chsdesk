class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.integer :member_id
      t.string :email
      t.string :password_digest
      t.string :username

      t.timestamps
    end
  end
end
