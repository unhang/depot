class LineItem < ApplicationRecord
  belongs_to :product
  belongs_to :cart

  after_update :destroy_if_quantity_is_zero

  def total_price
    product.price * quantity
  end

  private

  def destroy_if_quantity_is_zero
    destroy if quantity.zero?
  end
end
