Spree::Core::ControllerHelpers::Order.module_eval do


  def set_current_order
    if try_spree_current_user && current_order
      try_spree_current_user.orders.incomplete.where('id != ?', current_order.id).each do |order|
        current_order.merge!(order, try_spree_current_user)
      end
      current_order.wholesale = spree_current_user.wholesaler? if spree_current_user
    end
  end

  def after_save_new_order
    # make sure the user has permission to access the order (if they are a guest)
    return if spree_current_user
    session[:access_token] = @current_order.token
  end

  def current_order(options = {})
    options[:create_order_if_necessary] ||= false

    return @current_order if @current_order

    @current_order = find_order_by_token_or_user(options, true)

    if options[:create_order_if_necessary] && (@current_order.nil? || @current_order.completed?)
      @current_order = Spree::Order.new(current_order_params)
      @current_order.user ||= try_spree_current_user
      # See issue #3346 for reasons why this line is here
      @current_order.created_by ||= try_spree_current_user
      @current_order.save!
    end

    if spree_current_user && @current_order
      if spree_current_user.wholesaler? && !@current_order.is_wholesale?
        @current_order.to_wholesale!
      elsif !spree_current_user.wholesaler? && @current_order.is_wholesale?
        @current_order.to_fullsale!
      end
    end

    if @current_order
      @current_order.last_ip_address = ip_address
      return @current_order
    end
  end

end
