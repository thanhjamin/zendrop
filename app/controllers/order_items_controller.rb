class OrderItemsController < ApplicationController
  before_filter :load_order
  before_filter :set_order_item

  def index
    @order_items = @order.order_items.all
  end

  def new
    @order_item = OrderItem.new
  end

  private

  def load_order
    @order = Order.find(params[:order_id])
  end

  def set_order_item
    @ordered_item = @order.order_items.find(params[:id])
  end
end
