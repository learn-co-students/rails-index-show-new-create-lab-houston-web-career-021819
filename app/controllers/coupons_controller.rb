class CouponsController < ApplicationController
  def index
    @coupons = Coupon.all
  end

  def show
    @coupon = Coupon.find(params[:id])
    #byebug
  end

  def new
  end

  def create
    coupon = Coupon.create(coupon_params)
    redirect_to coupon_path(coupon)
  end

  def coupon_params
    params.require(:coupon).permit(:coupon_code, :store)
  end
end
