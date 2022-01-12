class Review < ApplicationRecord
  belongs_to :seller
  belongs_to :sale
  belongs_to :buyer
end
