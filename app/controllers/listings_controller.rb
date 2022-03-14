class ListingsController < ApplicationController
  skip_before_action :authenticate_user!, except: [:new, :create, :update]

  def index
    if params[:query].present?
      @listings = Listing.search_by_details(params[:query]).where(sold: false)
    else
      @listings = Listing.where(sold: false)
    end
  end

  def show
    @listing = Listing.find(params[:id])
  end

  def new
    @listing = Listing.new
  end

  def create
    @listing = Listing.new(listing_params)
    @listing.seller = current_user.seller
    if @listing.save
      redirect_to seller_home_path
    else
      render :new
    end
  end

  def edit
    @listing = Listing.find(params[:id])
  end

  def update
    @listing = Listing.find(params[:id])
    @listing.update(listing_params)
    redirect_to seller_home_path
  end

  def destroy
    @listing = Listing.find(params[:id])
    @listing.destroy
    redirect_to seller_home_path
  end

  # categories - non CRUD methods - could refactor category & subcategory listings

  def new_in
    shuffled_listings = Listing.where(sold: false).shuffle
    @listings = shuffled_listings.first(15)
  end

  def activewear
    @listings = Listing.where(category: "activewear", sold: false)
  end

  def denim
    @listings = Listing.where(subcategory: "jeans", sold: false)
  end

  def jackets
    @listings = Listing.where(category: "outerwear", sold: false)
  end

  def day_dresses
    @listings = Listing.where(subcategory: "day dresses", sold: false)
  end

  def dresses
    @listings = Listing.where(category: "dresses", sold: false)
  end

  def tops
    @listings = Listing.where(category: "tops", sold: false)
  end

  def trousers
    @listings = Listing.where(subcategory: "trousers", sold: false)
  end

  def skirts
    @listings = Listing.where(subcategory: "skirts", sold: false)
  end

  def accessories
    @listings = Listing.where(category: "accessories", sold: false)
  end

  private

  def listing_params
    params.require(:listing).permit(:seller, :title, :category, :subcategory, :price, :size, :description, :in_basket, :photo)
  end

end
