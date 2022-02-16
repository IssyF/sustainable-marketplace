class SustainabilityPractice < ApplicationRecord
  belongs_to :seller, dependent: :destroy

  validates :seller, presence: true
end
