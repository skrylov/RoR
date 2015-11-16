class Category < ActiveRecord::Base
  has_many :categories_posts
  has_many :posts, through: :categories_posts

  validates :title, presence: true, length: { minimum: 3}, uniqueness: true
end
