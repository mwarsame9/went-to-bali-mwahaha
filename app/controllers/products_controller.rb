class ProductsController < ApplicationController
  # before_filter :authorize, except: [:index, :show]

  before_action :require_permission, only: :edit

  before_action :only => [:edit] do
    redirect_to product_path unless current_user && current_user.admin
  end

  def require_permission
    if current_user != Product.find(params[:id]).user
      redirect_to root_path
    else
      @product = Product.find(params[:id])
      render :edit
    end
  end

  def index
    @products = Product.all
    @order_item = current_order.order_items.new
  end

  def show
    @product = Product.find(params[:id])
  end

  def new
    @product = Product.new
  end

  def create
    @product = Product.new(product_params)
    if @product.save
      redirect_to '/'
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
