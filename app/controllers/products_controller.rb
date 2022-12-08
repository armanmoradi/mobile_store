class ProductsController < ApplicationController
  def index
    @products = Product.all
  end
  def about

  end

  def new
    @product = Product.new
  end

  def create
    @product = Product.new(params.require(:product).permit(:name, :description))
    if @product.save
      flash[:notice] = "Product was created"
      redirect_to @product
    else
      redirect_to 'new'
    end
  end

  def show
    @product = Product.find(params[:id])
  end
end
