class Seller < ApplicationRecord
  belongs_to :user
  has_many :reviews
  has_many :listings
  has_one :sustainability_practice
end
