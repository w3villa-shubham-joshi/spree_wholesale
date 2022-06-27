Deface::Override.new(:virtual_path => "spree/checkout/_delivery", 
                     :name => "delivery_product_price", 
                     :replace => ".stock-contents .item-price", 
                     :text => "<td class='item-price'>
                                <%= spree_current_user && spree_current_user.has_spree_role?(:wholesaler) ? number_to_currency(item.variant.product.wholesale_price) : display_price(item.variant) %>
                              </td>")
