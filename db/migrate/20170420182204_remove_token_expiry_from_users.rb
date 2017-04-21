class RemoveTokenExpiryFromUsers < ActiveRecord::Migration[5.0]
  def change
    remove_column :users, :token_expiry, :datetime
  end
end
