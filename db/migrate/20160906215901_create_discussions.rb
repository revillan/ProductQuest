class CreateDiscussions < ActiveRecord::Migration
  def change
    create_table :discussions do |t|
      t.text :body, null: false
      t.integer :author_id, null: false
      t.integer :product_id, null: false
      t.timestamps null: false
    end
    add_index :discussions, :author_id
    add_index :discussions, :product_id
  end
end
