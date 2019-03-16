class CouponsController < ApplicationController

  def create
    new_coupon = Coupon.create(coupon_params[:coupon])
    redirect_to new_coupon
  end

  def index
    @coupons = Coupon.all
  end

  def new

  end

  def show
    @coupon = Coupon.find(params[:id])
  end

  private

    def coupon_params
      params.permit(coupon: [:coupon_code, :store])
    end
end
