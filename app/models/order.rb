class Order < ApplicationRecord
  belongs_to :listing
  belongs_to :buyer
  monetize :amount_cents
end
