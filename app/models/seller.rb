class Seller < ApplicationRecord
  belongs_to :user
  has_many :reviews
  has_many :listings
  has_one :sustainability_practice

  validates :shop_name, presence: true, uniqueness: true
  validates :shop_description, presence: true, length: { in: 3..100 }
  validates :user, presence: true
end
