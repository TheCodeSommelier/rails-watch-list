class Bookmark < ApplicationRecord
  belongs_to :movies
  belongs_to :lists

  validates :comment, length: { minimum: 6}
  validates :movies, :lists, presence: true
end
