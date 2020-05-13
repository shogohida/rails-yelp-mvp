class Review < ApplicationRecord
  INTEGERS = (0..5)
  belongs_to :restaurant
  validates :restaurant, presence: true
  validates :content, presence: true
  validates :rating, presence: true, inclusion: { in: INTEGERS }, numericality: true
end
