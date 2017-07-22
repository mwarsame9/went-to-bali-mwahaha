class OrderItemsController < ApplicationController

  def create
    @order = current_order
    @item = @order.order_items.new(item_params)
    if @order.save
      respond_to do |format|
        session[:order_id] = @order.id
        # flash[:notice] = "Product successfully added to cart!"
        format.html
        format.js
      end
    else
     redirect_to products_path
    end
  end

  def update
    @order = current_order
    @item = @order.order_items.find(params[:id])
    @item.update_attributes(item_params)
    @order.save
  end

  def destroy
    @order = current_order
    @item = @order.order_items.find(params[:id])
    @item.destroy
    @order.save
    respond_to do |format|
      format.html { redirect_to cart_path }
      format.js { redirect_to cart_path }
    end

  end

  private

  def item_params
    params.require(:order_item).permit(:quantity, :product_id)
  end
end
