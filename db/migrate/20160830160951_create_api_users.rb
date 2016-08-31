class CreateApiUsers < ActiveRecord::Migration
  def change
    create_table :api_users do |t|
      t.string :username, null: false
      t.string :password_digest, null: false
      t.string :session_token, null: false
      t.string :title
      t.string :image_url
      t.timestamps null: false
    end
  end
end
