class Sale < ApplicationRecord
  belongs_to :listing
  belongs_to :buyer

  validates :shipping_address, presence: true
  validates :buyer, presence: true
  validates :listing, presence: true
end
