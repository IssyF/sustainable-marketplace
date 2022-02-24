class Listing < ApplicationRecord
  belongs_to :seller
  has_many :orders
  has_one_attached :photo

  monetize :price_cents

  validates :title, presence: true, length: { in: 3..100 }
  validates :category, presence: true, inclusion: { in: %w[dresses tops outerwear bottoms shoes accessories activewear] }
  validates :subcategory, presence: true, inclusion: { in: ["evening dresses", "day dresses", "blouses", "tshirts", "camisoles", "knitwear", "coats", "jackets", "trousers", "jeans", "skirts", "shorts", "boots", "sandals", "trainers", "loafers", "jewellery", "scarves", "hair accessories", "bags", "leggings", "gym tops", "sports bras"] }
  # validates :price, presence: true, inclusion: { in: 3..200 }
  validates :size, presence: true, inclusion: { in: %w[XS S M L UK6 UK8 UK10 UK12 UK14 UK16 UK18 UK20 UK3/EU36 UK4/EU37 UK5/EU38 UK6/EU39 UK7/EU40 UK8/EU41 UK9/EU42 One\ Size], message: "not a valid size" }
  validates :description, presence: true, length: { in: 3..1000 }
  validates :title, presence: true
  # validates :photo, presence: true

  include PgSearch::Model
  pg_search_scope :search_by_details,
    against: [ :title, :category, :subcategory, :description, :size ],
    associated_against: {
      seller: [ :shop_name ]
    },
    using: {
      tsearch: { prefix: true } # partial words (beginning) can be searched
    }

end
