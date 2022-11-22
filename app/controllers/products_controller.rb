class ProductsController < ApplicationController
  def index
    @products = Product.all
  end

  def show
    @poducts = Product.find(params[:id])
    @order = Order.new
  end

  def new
    @product = Product.new
  end

  def create
    @product = Product.new(product_params)
    @product.user = current_user
    if @product.save
      redirect_to product_path(@product)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def product_params
    params.require(:product).permit(:name, :price, :description, :photo)
  end
end
