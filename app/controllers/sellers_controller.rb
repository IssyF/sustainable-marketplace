class SellersController < ApplicationController
  def bam
    seller = Seller.find_by_shop_name("BAM")
    @listings = Listing.where(seller: seller)
  end

  def molby
    seller = Seller.find_by_shop_name("Molby the Label")
    @listings = Listing.where(seller: seller)
  end

  def before_july
    seller = Seller.find_by_shop_name("Before July")
    @listings = Listing.where(seller: seller)
  end
end
