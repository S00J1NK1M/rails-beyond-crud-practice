class Review < ApplicationRecord
  belongs_to :restaurant
  # If I have a review, I can do review.restaurant

  validates :content, presence: true
end
