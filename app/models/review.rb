class Review < ApplicationRecord
  INTEGERS = (0..5).to_a
  belongs_to :restaurant
  validates :restaurant, presence: true
  validates :content, presence: true
  validates :rating, presence: true, inclusion: { in: INTEGERS }
end
