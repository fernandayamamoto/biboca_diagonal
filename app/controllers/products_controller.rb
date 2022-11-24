class ProductsController < ApplicationController
  before_action :set_product, only: %i[show edit update destroy]
  def index
    @products = policy_scope(Product)
  end

  def show
    authorize @product
  end

  def new
    @product = Product.new
    authorize @product
  end

  def create
    @product = Product.new(product_params)
    @product.user = current_user
    authorize @product
    if @product.save
      redirect_to product_path(@product)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    authorize @product
  end

  def update
    authorize @product
    if @product.update(product_params)
      redirect_to @product, notice: "Produto atualizado com sucesso!"
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    authorize @product
    @product.destroy
    redirect_to products_path(@product), status: :see_other
  end

  private

  def article_params
    params.require(:article).permit(:title, :body, :photos)
  end

  def set_product
    @product = Product.find(params[:id])
  end

  def product_params
    params.require(:product).permit(:name, :price, :description, :photo)
  end
end
