class CreateLogins < ActiveRecord::Migration
  def change
    create_table :logins do |t|
      t.integer :member_id
      t.string :email
      t.string :password_digest
      t.string :role

      t.timestamps
    end
  end
end
