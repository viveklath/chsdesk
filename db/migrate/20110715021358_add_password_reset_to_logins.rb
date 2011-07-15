class AddPasswordResetToLogins < ActiveRecord::Migration
  def change
    add_column :logins, :password_reset_token, :string
    add_column :logins, :password_reset_sent_at, :datetime
  end
end
