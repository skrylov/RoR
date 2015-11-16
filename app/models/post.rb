class Post < ActiveRecord::Base
  has_many :comments
  has_and_belongs_to_many :categories
  belongs_to :user
  has_and_belongs_to_many :tags

  validates :title, presence: true

  def categories_titles
    categories.pluck(:title).join(', ')
  end
end
