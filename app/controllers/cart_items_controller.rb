class CartItemsController < ApplicationController
    before_action :cart_params
    def create 
        @cart= current_order
        @cart_item=@cart.cart_items.new(cart_params)
        @cart.save
        session[:cart_id] = @cart.id
    end

    private

    def cart_params
        params.require(:cart_item).permit(:product_id, :quantity)

    end



end
