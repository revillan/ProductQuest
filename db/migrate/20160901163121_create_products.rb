class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :name, null: false
      t.text :description, null: false
      t.integer :hunter_id, null: false
      t.string :image_url
      t.string :product_url, null: false
      t.timestamps null: false
    end
    add_index :products, :hunter_id
  end
end
