class CardsController < ApplicationController
  def show
    @cart_items = current_order.cart_items
  end
end
