class AddEmailToUsers < ActiveRecord::Migration
  def change
    remove_column :users, :user_name
    remove_column :users, :first_name
    add_column :users, :email, :string
    add_column :users, :name, :string
  end
end
