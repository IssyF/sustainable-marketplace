class SellersController < ApplicationController
  skip_before_action :authenticate_user!

  def show
    @seller = Seller.find(params[:id])
    @listings = Listing.where(seller: @seller, sold: false)
  end

  def new
    @seller = Seller.new
  end

  def create
    @seller = Seller.new(seller_params)
    @seller.user = current_user
    if @seller.save
      redirect_to seller_home_path
    else
      render :new
    end
  end

  def update
    @seller = Seller.find(params[:id])
    @seller.update(seller_params)

    respond_to do |format|
      format.html { redirect_to seller_home_path, notice: 'Details updated!' }
      format.json { head :no_content }
    end
  end

  def seller_home
    @seller = current_user.seller
    @listings = Listing.where(seller: @seller, sold: false)
    @sales = Listing.where(seller: @seller, sold: true)
    @sales_value = 0
    @sales.each do |sale|
      @sales_value += sale.price
    end
  end

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

  private

  def seller_params
    params.require(:seller).permit(:user, :shop_name, :shop_description)
  end
end
