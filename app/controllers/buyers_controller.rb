class BuyersController < ApplicationController
  def new
    @buyer = Buyer.new
  end

  def create
    @buyer = Buyer.new(buyer_params)
    @buyer.user = current_user
    if @buyer.save!
      redirect_to '/'
    else
      render :new
    end
  end

  def profile
    @buyer = current_user.buyer
    @orders = @buyer.orders.order(created_at: :desc)
  end

  def update
    @buyer = Buyer.find(params[:id])
    @buyer.update(buyer_params)

    respond_to do |format|
      format.html { redirect_to profile_path, notice: 'Details updated!' }
      format.json { head :no_content }
    end
  end

  private

  def buyer_params
    params.require(:buyer).permit(:user, :address)
  end
end
