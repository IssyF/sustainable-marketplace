class Seller < ApplicationRecord
  belongs_to :user
  has_many :reviews, dependent: :destroy
  has_many :listings, dependent: :destroy
  has_many :orders, through: :listings
  has_one :sustainability_practice

  validates :shop_name, presence: true, uniqueness: true
  validates :shop_description, presence: true, length: { in: 3..100 }
  validates :user, presence: true
end
