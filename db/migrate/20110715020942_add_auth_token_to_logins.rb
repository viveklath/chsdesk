class AddAuthTokenToLogins < ActiveRecord::Migration
  def change
    add_column :logins, :auth_token, :string
  end
end
