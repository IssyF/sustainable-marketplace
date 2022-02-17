class ListingsController < ApplicationController
  skip_before_action :authenticate_user!, except: [:new, :create, :update]

  def new_in
    shuffled_listings = Listing.all.shuffle
    @listings = shuffled_listings.first(15)
  end

  def activewear
    @listings = Listing.where(category: "activewear")
  end

  def denim
    @listings = Listing.where(subcategory: "jeans")
  end

  def jackets
    @listings = Listing.where(category: "outerwear")
  end

  def day_dresses
    @listings = Listing.where(subcategory: "day dresses")
  end

  def dresses
    @listings = Listing.where(category: "dresses")
  end

  def tops
    @listings = Listing.where(category: "tops")
  end

  def trousers
    @listings = Listing.where(subcategory: "trousers")
  end

  def skirts
    @listings = Listing.where(subcategory: "skirts")
  end

  def accessories
    @listings = Listing.where(category: "accessories")
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
    @listing = Listing.new(listing_params)
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
