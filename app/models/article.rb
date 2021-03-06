class Article < ApplicationRecord

  # Associate an article with many comments
  has_many :comments, dependent: :destroy

  # Validate that each article has a title that is at least 5 characters long
  validates :title, presence: true, length: { minimum: 5 }
end
