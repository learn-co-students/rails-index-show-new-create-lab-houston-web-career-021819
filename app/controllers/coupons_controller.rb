class CouponsController < ApplicationController

  skip_before_action :verify_authenticity_token

  def new
  end

  def index
    @coupons = Coupon.all
  end

  def create

    coupon = Coupon.create(coupon_params[:coupon])
    redirect_to coupon
  end

  def show
    @coupon = Coupon.find(params[:id])
  end

  def coupon_params
    params.permit coupon: [:coupon_code, :store]
  end

end
