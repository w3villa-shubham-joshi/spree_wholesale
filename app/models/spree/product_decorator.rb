Spree::Product.instance_eval do

  delegate :wholesale_price, to: :master  if Spree::Variant.table_exists? && Spree::Variant.column_names.include?("wholesale_price")
  
end

Spree::Product.class_eval do

  def is_wholesaleable?
    0 < master.wholesale_price
  end

end
