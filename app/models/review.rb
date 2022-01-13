class Review < ApplicationRecord
  belongs_to :seller
  belongs_to :sale
  belongs_to :buyer

  validates :sale, presence: true
  validates :buyer, presence: true
  validates :seller, presence: true
  validates :size_rating, presence: true, inclusion: { in: [1, 2, 3, 4, 5] }
  validates :quality_rating, presence: true, inclusion: { in: [1, 2, 3, 4, 5] }
  validates :review_description, presence: true, length: { in: 3..500 }

end
