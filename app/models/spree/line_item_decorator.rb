Spree::LineItem.class_eval do

  belongs_to :variant
  delegate :wholesale_price, to: :variant
  delegate :is_wholesaleable?, to: :variant

  def copy_price

    self.price = (order.is_wholesale? && variant.is_wholesaleable? ? variant.wholesale_price : variant.price) if variant

  end

end
