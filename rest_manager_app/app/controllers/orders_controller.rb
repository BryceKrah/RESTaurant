class OrdersController < ApplicationController
  def index
    @orders = Order.all
    @items = Item.all
    @parties = Party.all
  end

  def new
    @order = Order.new
    @orders = Order.all
    @items = Item.all
    @parties = Party.all
  end

  def create
    @order = Order.new(order_params)
    if @order.save
        redirect_to parties_path
    else
      redirect_to new_party_path
    end
  end

  private
  def order_params
    params.require(:order).permit(:party_id, :item_id)
  end

end
