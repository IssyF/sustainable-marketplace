class SustainabilityPractice < ApplicationRecord
  belongs_to :seller

  validates :seller, presence: true
end
