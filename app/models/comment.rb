class Comment < ApplicationRecord
  belongs_to :article

  # Validate that each comment has a commenter name that is at least 3 characters long
  validates :commenter, presence: true, length: { minimum: 3 }
end
