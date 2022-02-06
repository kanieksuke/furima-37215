class OrdersController < ApplicationController
  def index
    @order_address = OrderAddress.new
    @item = Item.find(params[:item_id])
  end

  def create
    @order_address = OrderAddress.new(order_params)
    @order_address.save
    redirect_to root_path
  end

  private
  def order_params
    params.permit(:postal_code, :prefecture, :city, :addresses, :phone_number).merge(user_id: current_user.id, item_id: params[:item_id])
  end
end
