class RenameUser < ActiveRecord::Migration
  def change
    rename_table :api_users, :users
  end
end
