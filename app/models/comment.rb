class Comment < ApplicationRecord
  validates :content, presence: true
  validates :quoted, presence: true
  belongs_to :kid
end
