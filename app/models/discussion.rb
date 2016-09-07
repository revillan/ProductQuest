class Discussion < ActiveRecord::Base
  validates :author_id, :body, :product_id, presence: true
  belongs_to :user,
    foreign_key: :author_id

  belongs_to :product
end
