class LineItem < ApplicationRecord
  belongs_to :product
  belongs_to :cart

  after_update :destroy_if_quantity_is_zero
  after_update :detroy_cart_if_line_item_is_zero
  after_destroy :detroy_cart_if_line_item_is_zero

  def total_price
    product.price * quantity
  end

  private 

  def destroy_if_quantity_is_zero
    destroy if quantity.zero?
  end

  def detroy_cart_if_line_item_is_zero
    if cart.line_items.empty?
      cart.destroy
    end
  end
end
