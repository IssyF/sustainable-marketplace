class ListingsController < ApplicationController
  def new_in
    shuffled_listings = Listing.all.shuffle
    @listings = shuffled_listings.first(15)
  end

  def activewear
    @listings = Listing.where(category: "activewear")
  end

  def index
    @listings = Listing.all
  end

  def show
    @listing = Listing.find(params[:id])
  end

  def new
    @listing = Listing.new
  end

  def create
    @listing = Listing.new(params[:listing])
    @listing.save
  end

  def update
    @listing = Listing.find(params[:id])
  end

  private

  def listing_params
    params.require(:listing).permit(:seller, :title, :category, :subcategory, :price, :size, :description, :in_basket, :photo)
  end

end
