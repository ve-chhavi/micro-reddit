class Comment < ApplicationRecord
  belongs_to :author
  belongs_to :post

  validates :title, :body, :author_id, :post_id, presence: true
  validates :title, uniqueness: true
end
