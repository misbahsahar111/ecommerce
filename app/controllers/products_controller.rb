class ProductsController < ApplicationController
  def index
    @products=Product.all
    @cart_item = current_order.cart_items.new
  end

  def show
    @product = Product.find(params[:id])
  end
end
