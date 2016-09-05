class Product < ActiveRecord::Base
  validates :hunter_id, :name, :description, :product_url, presence: true

  belongs_to :user,
    primary_key: :id,
    foreign_key: :hunter_id
end
