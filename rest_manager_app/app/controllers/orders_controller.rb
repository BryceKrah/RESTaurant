class OrdersController < ApplicationController

  def index
    @orders = Order.order(:party_id)
    @items = Item.all
    @parties = Party.all
  end

  def show
    @orders = Order.find(params[:id])
  end

  def new
    @order = Order.new
    @orders = Order.all
    @items = Item.all
    @parties = Party.all
  end

  def create
    puts "Item ids #{params[:item][:item_id]}"
    food_items = params[:item][:item_id].drop(1).map{ |item| item.to_i}
    @items = Item.where("id in (?)", food_items)
    @order = Order.new(order_params)
      # items_array = params[:item]["item_id"].drop(1)
    if @order.save
        @items.each { |item|
          @order.items << item
        }
        redirect_to orders_path
    else
      redirect_to new_order_path
    end
  end

  def destroy
    @order = Order.find(params[:id])
    @order.destroy
    redirect_to orders_path
  end


  private
  def order_params
    params.require(:order).permit(:party_id, :item_id)
  end

end
