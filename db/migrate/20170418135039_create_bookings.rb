class CreateBookings < ActiveRecord::Migration[5.0]
  def change
    create_table :bookings do |t|
      t.boolean :confirmation
      t.text :motivations
      t.text :user_review
      t.string :mentor_review
      t.references :user, foreign_key: true
      t.references :meeting, foreign_key: true

      t.timestamps
    end
  end
end
