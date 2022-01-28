class OrdersController < ApplicationController
  def index
    @order_address = OrderAddress.new
    @item = Item.find(params[:item_id])
  end

  private
  def order_address_params
    params.require(:order_address).permit(:postal_code, :prefecture_id, :city, :addresses, :phone_number).merge(user_id: current_user.id, item_id: params[:item_id])
  end
end
