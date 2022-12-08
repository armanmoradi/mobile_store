class ProductsController < ApplicationController
  def index
    @products = Product.all
  end

  def new
  end

  def create
    @product = Product.new(params.require(:product).permit(:name, :description))
    @product.save
    redirect_to @product
  end

  def show
    @product = Product.find(params[:id])
  end
end
