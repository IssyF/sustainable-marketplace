class Listing < ApplicationRecord
  belongs_to :seller
  has_one :sale
end
