class OrdersController < ApplicationController
  def create
  end

  private

  def orders_params
    params.require(:order).permit(:user_id, :finalize, :order_items => [:order_items_id, :product_id, :quantity])
  end
end
