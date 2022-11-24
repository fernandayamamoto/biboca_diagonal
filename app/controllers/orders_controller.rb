class OrdersController < ApplicationController
  def index
    @orders = Order.where(user: current_user)
  end

  def show
    @order = Order.find(params[:id])
  end

  def create
    @order = Order.new
    @product = Product.find(params[:product_id])
    @order.product = @product
    @order.user = current_user
    if @order.save
      redirect_to product_order_path(@product, @order)
    else
      render :new, status: :unprocessable_entity
    end
  end
end
