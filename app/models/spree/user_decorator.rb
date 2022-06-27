Spree::User.instance_eval do

  has_one :wholesaler, :class_name => "Spree::Wholesaler"

  scope :wholesale, lambda { includes(:spree_roles).where("spree_roles.name" => "wholesaler") }


end

Spree::User.class_eval do

  def wholesaler?
    has_spree_role?("wholesaler") && !wholesaler.nil?
  end

end
