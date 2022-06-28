class ProductsController < ApplicationController
  def index
    @products=Product.paginate(page: params[:page], per_page: 2)
    @cart_item = current_order.cart_items.new
  end

  def show
    @product = Product.find(params[:id])
  end
end
