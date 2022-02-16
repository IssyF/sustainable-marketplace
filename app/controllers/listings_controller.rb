class ListingsController < ApplicationController
  def new_in
    shuffled_listings = Listing.all.shuffle
    @listings = shuffled_listings.first(15)
  end

  def show
  end

end
