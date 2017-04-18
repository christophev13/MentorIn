class AddColumnsToUsers < ActiveRecord::Migration[5.0]
  def change
     add_column :users, :first_name, :string
     add_column :users, :last_name, :string
     add_column :users, :industry, :string
     add_column :users, :profile, :string
     add_column :users, :linkedin_url, :string
     add_column :users, :avatar_url, :string
     add_column :users, :biography, :string
  end
end