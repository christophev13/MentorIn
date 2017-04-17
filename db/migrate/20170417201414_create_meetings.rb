class CreateMeetings < ActiveRecord::Migration[5.0]
  def change
    create_table :meetings do |t|
      t.string :title
      t.text :description
      t.integer :nb_max_participant
      t.string :local
      t.string :profile_wanted
      t.datetime :date
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
