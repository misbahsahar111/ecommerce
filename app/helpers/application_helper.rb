module ApplicationHelper


    def current_order
        if !session[:cart_id].nil?
            Cart.find(session[:cart_id])
        else
            Cart.new
        end
    end
end
