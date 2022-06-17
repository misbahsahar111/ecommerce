class CartItemsController < ApplicationController
    
    def create 
        @cart= current_order
        @cart_item=@cart.cart_items.new(cart_params)
        @cart.save
        session[:cart_id] = @cart.id
        
       
    end


    def update

        @cart= current_order
        @cart_item=@cart.cart_items.find(params[:id])
        @cart_item.update_attributes(cart_params)
        redirect_to root_path
    end


    def show

        @cart= current_order
        @cart_item=@cart.cart_items.find(params[:id])
        @cart_item.destroy
        redirect_to root_path
    end

    private

    def cart_params
        params.require(:cart_item).permit(:product_id, :quantity)

    end



end

