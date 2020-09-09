class Review < ApplicationRecord
  belongs_to :restaurant
  validates :content, :rating, presence: true
  validates_numericality_of :rating, :only_integer => true
  validates :rating, inclusion: { in: (0..5).to_a }
end
