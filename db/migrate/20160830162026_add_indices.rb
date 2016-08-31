class AddIndices < ActiveRecord::Migration
  def change
    add_index :api_users, :username, unique: true
    add_index :api_users, :session_token, unique: true
  end
end
