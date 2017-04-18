class AddDefaultValueConfirmation < ActiveRecord::Migration[5.0]
  def change
    change_column :bookings, :confirmation, :boolean, default: false
  end
end
