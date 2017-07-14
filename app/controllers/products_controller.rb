class ProductsController < ApplicationController
  before_filter :authorize, except: [:new, :create, :index, :edit, :update, :destroy, :show]

  def index
    @products = Product.all
    @order_item = current_order.order_items.new
  end

  def show
    @product = Product.find(params[:id])
    respond_to do |format|
      format.html { redirect_to products_path }
      format.js
    end
  end

  def new
    @product = Product.new
  end

  def create
    @product = Product.new(product_params)
    if @product.save
      flash[:notice] = "Product successfully added!"
      respond_to do |format|
        format.html { redirect_to products_path }
        format.js { redirect_to products_path }
      end
      # redirect_to products_path
    else
      render :new
    end
  end

  def edit
    @product = Product.find(params[:id])
  end

def update
  @product= Product.find(params[:id])
  if @product.update(product_params)
    flash[:notice] = "Product successfully updated!"
    redirect_to products_path
  else
    render :edit
  end
end

def destroy
  @product = Product.find(params[:id])
  if @product.destroy
    flash[:notice] = "Product successfully removed!"
    redirect_to products_path
  end
end

  private
  def product_params
    params.require(:product).permit(:name, :description, :price)
  end
end
