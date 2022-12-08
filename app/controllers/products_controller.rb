class ProductsController < ApplicationController
  def index
    @product = Product.all
  end

  def new
  end

  def create
    @product = Product.new(params.require(:product).permit(:name, :description))
    @product.save
    redirect_to @product
  end

  def show
    
  end
end
