class ChangeBiografyToTextOnUsers < ActiveRecord::Migration[5.0]
  def change
    change_table :users do |t|
      t.change :biography, :text
    end
  end
end
