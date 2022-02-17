class BuyersController < ApplicationController
  def new
    @buyer = Buyer.new
  end

  def create
    @buyer = Buyer.new(buyer_params)
    @buyer.user = current_user
    if @buyer.save!
      redirect_to :root_path
    else
      render :new
    end
  end

  private

  def buyer_params
    params.require(:buyer).permit(:user, :address)
  end
end
