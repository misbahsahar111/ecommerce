class CartItem < ApplicationRecord
  belongs_to :product
  belongs_to :cart

  before_save :set_unit_price
  before_save :set_total

  def unit_price
    
    if product.persisted?
      self[:unit_price] =product.price
    else
      product.price
  end
end

  def total
    
    unit_price * quantity
  end


  private

  def set_unit_price
    self[:unit_price] = unit_price
  end

  def set_total
    self[:total] = total * quantity
  end
end
