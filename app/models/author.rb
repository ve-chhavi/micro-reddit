class Author < ApplicationRecord
  has_many :posts
  has_many :comments

  validates :username, :email, uniqueness: true
  validates :username, :email, :password, presence: true
  validates :username, length: { minimum: 4, maximum: 12 }
  validates :password, length: { minimum: 6, maximum: 16 }
end
