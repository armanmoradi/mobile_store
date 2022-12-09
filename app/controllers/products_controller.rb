class ProductsController < ApplicationController
  def index
    @products = Product.all
  end
  def about

  end

  def edit
    @product = Product.find(params[:id])
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
      render 'new'
    end
  end

  def update
    @product = Product.find(params[:id])
    if @product.update(params.require(:product).permit(:name, :description))
      flash[:notice] = "Product was updated successfully"
      redirect_to @product
    else 
      render 'edit'
    end
  end

  def destroy
    @product = Product.find(params[:id])
    @product.destroy
    redirect_to products_path
  end

  def show
    @product = Product.find(params[:id])
  end
end
