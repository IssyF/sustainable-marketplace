class Buyer < ApplicationRecord
  belongs_to :user
  has_many :orders
  has_many :reviews, dependent: :destroy

  validates :address, presence: true
end
