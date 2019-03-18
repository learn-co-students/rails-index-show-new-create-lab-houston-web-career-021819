class CouponsController < ApplicationController

#Create
def new
  @coupon = Coupon.new
end

def create
  @coupon = Coupon.new
  @coupon.coupon_code = params[:coupon][:coupon_code]
  @coupon.store = params[:coupon][:store]
  @coupon.save
  redirect_to coupon_path(@coupon)
end


#Read
def index
  @coupons = Coupon.all
end

def show
  @coupon = Coupon.find(params[:id])
end


#Update
def edit
  @coupon = Coupon.find(params[:id])
end

def update
  @coupon = Coupon.find(params[:id])
  @coupon.coupon_code = params[:coupon][:coupon_code]
  @coupon.store = params[:coupon][:store]
  @coupon.save
  redirect_to coupon_path(@coupon)
end


#Delete
def destroy
  @coupon = Coupon.find(params[:id])
  @coupon.destroy
end

end
