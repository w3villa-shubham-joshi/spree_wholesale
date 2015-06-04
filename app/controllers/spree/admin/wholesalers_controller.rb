class Spree::Admin::WholesalersController < Spree::Admin::ResourceController
  respond_to :html, :xml
  before_filter :approval_setup, :only => [ :approve, :reject ]

  def index
  end

  def show
    @wholesaler = Spree::Wholesaler.find(params[:id])
    respond_with(@wholesaler)
  end

  def new
    @wholesaler = Spree::Wholesaler.new
    @wholesaler.build_user
    @wholesaler.bill_address = Spree::Address.default
    @wholesaler.ship_address = Spree::Address.default
    respond_with(@wholesaler)
  end

  def create
    @wholesaler = Spree::Wholesaler.new(wholesale_params)
    if @wholesaler.save
      flash[:notice] = I18n.t('spree.admin.wholesaler.success')
      redirect_to spree.admin_wholesalers_path
    else
      flash[:error] = I18n.t('spree.admin.wholesaler.failed')
      render :action => "new"
    end
  end

  def edit
    @wholesaler = Spree::Wholesaler.find(params[:id])
    respond_with(@wholesaler)
  end

  def update
    @wholesaler = Spree::Wholesaler.find(params[:id])

    if @wholesaler.update_attributes(wholesale_params)
      flash[:notice] = I18n.t('spree.admin.wholesaler.update_success')
    else
      flash[:error] = I18n.t('spree.admin.wholesaler.update_failed')
    end
    respond_with(@wholesaler)
  end

  def destroy
    @wholesaler = Spree::Wholesaler.find(params[:id])
    @wholesaler.destroy
    flash[:notice] = I18n.t('spree.admin.wholesaler.destroy_success')
    respond_with(@wholesaler)
  end

  def approve
    return redirect_to request.referer, :flash => { :error => "Wholesaler is already active." } if @wholesaler.active?
    @wholesaler.activate!
    redirect_to request.referer, :flash => { :notice => "Wholesaler was successfully approved." }
  end

  def reject
    return redirect_to request.referer, :flash => { :error => "Wholesaler is already rejected." } unless @wholesaler.active?
    @wholesaler.deactivate!
    redirect_to request.referer, :flash => { :notice => "Wholesaler was successfully rejected." }
  end

  private

  def approval_setup
    @wholesaler = Spree::Wholesaler.find(params[:id])
    @role = Spree::Role.find_or_create_by(name: "wholesaler")
  end

  def collection
    return @collection if @collection.present?

    params[:search] ||= {}
    params[:search][:meta_sort] ||= "company.asc"
    @search = Spree::Wholesaler.ransack(params[:q])
    @collection = @search.result.page(params[:page]).per(Spree::Config[:admin_products_per_page])
  end

  def wholesale_params
    params.require(:wholesaler).permit(:ship_address, :bill_address, :company, :buyer_contact, :manager_contact, :phone, :fax, :resale_number, :taxid, :web_address, :terms, :notes, :use_billing, bill_address_attributes: [:firstname, :lastname, :address1, :address2, :city, :state_id, :zipcode, :country_id, :phone], ship_address_attributes: [:firstname, :lastname, :address1, :address2, :city, :state_id, :zipcode, :country_id, :phone], user_attributes: [:email, :password, :password_confirmation])
  end

end
