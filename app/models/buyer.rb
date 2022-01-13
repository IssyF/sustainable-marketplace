class Buyer < ApplicationRecord
  belongs_to :user
  has_many :sales
  has_many :reviews

  validates :address, presence: true
end
