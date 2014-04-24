class OrdersController < ApplicationController

  def new
    @order = Order.new
  end

  def create
    @order = Order.new(orders_params)
    respond_to do |format|
      format.html
    end
  end

  private

  def orders_params
    params.require(:order).permit(:user_id, :finalize, :order_items => [:order_items_id, :product_id, :quantity])
  end
end
