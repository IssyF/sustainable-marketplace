class Listing < ApplicationRecord
  belongs_to :seller
  has_one :sale

  validates :title, presence: true, length: { in: 3..50 }
  validates :category, presence: true, inclusion: { in: %w[dresses tops bottoms shoes accessories activewear] }
  validates :subcategory, presence: true, inclusion: { in: ["evening dresses", "day dresses", "blouses", "tshirts", "camisoles", "trousers", "jeans", "skirts", "shorts", "boots", "sandals", "trainers", "loafers", "jewellery", "scarves", "hair accessories", "bags", "leggings", "gym tops", "sports bras"] }
  validates :price, presence: true, inclusion: { in: 1..500 }
  validates :size, presence: true, inclusion: { in: %w[XS S M L UK6 UK8 UK10 UK12 UK 14 UK16 UK18 UK20 UK3/EU36 UK4/EU37 UK5/EU38 UK6/EU39 UK7/EU40 UK8/EU41 UK9/EU42 One\ Size], message: "Not a valid size" }
  validates :description, presence: true, length: { in: 3..500 }
  validates :title, presence: true
end
