# -*- encoding: utf-8 -*-
# stub: spree_wholesale 0.70.3 ruby lib

Gem::Specification.new do |s|
  s.name = "spree_wholesale"
  s.version = "0.70.3"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib"]
  s.authors = ["Spencer Steffen"]
  s.date = "2017-05-29"
  s.description = "Spree Wholesale adds a wholesale_price field to variants and allows users with a \"wholesaler\" role to access these prices."
  s.email = ["spencer@citrusme.com"]
  s.files = [".autotest", ".gitignore", ".travis.yml", "Gemfile", "LICENSE", "README.md", "Rakefile", "Versionfile", "app/application_helper_decorator.rb", "app/assets/javascripts/wholesaler_address.js", "app/assets/stylesheets/admin/wholesalers.css", "app/assets/stylesheets/store/wholesale.css", "app/controllers/spree/admin/base_controller_decorator.rb", "app/controllers/spree/admin/wholesalers_controller.rb", "app/controllers/spree/checkout_controller_decorator.rb", "app/controllers/spree/wholesalers_controller.rb", "app/models/spree/line_item_decorator.rb", "app/models/spree/order_decorator.rb", "app/models/spree/product_decorator.rb", "app/models/spree/spree_current_order_decorator.rb", "app/models/spree/user_decorator.rb", "app/models/spree/variant_decorator.rb", "app/models/spree/wholesaler.rb", "app/overrides/admin/admin-order-show-buttons.rb", "app/overrides/admin/admin-orders-headers.rb", "app/overrides/admin/admin-orders-rows.rb", "app/overrides/admin/admin-orders-search.rb", "app/overrides/admin/admin-wholesale-tab.rb", "app/overrides/admin/admin_product_form_right.rb", "app/overrides/cart_item_price.rb", "app/overrides/cart_item_total.rb", "app/overrides/checkout_payment_step.rb", "app/overrides/delivery_product_price.rb", "app/overrides/id_inside_cart_form.rb", "app/overrides/product_wholesale_price.rb", "app/overrides/products_wholesale_price.rb", "app/overrides/wholesale-my-orders.rb", "app/views/spree/admin/hooks/_admin_orders_index_headers.html.erb", "app/views/spree/admin/hooks/_admin_orders_index_rows.html.erb", "app/views/spree/admin/hooks/_admin_orders_index_search.html.erb", "app/views/spree/admin/hooks/_product_form_right.html.erb", "app/views/spree/admin/hooks/_wholesale_tab.html.erb", "app/views/spree/admin/variants/_form.html.erb", "app/views/spree/admin/wholesalers/_form.html.erb", "app/views/spree/admin/wholesalers/_user_options.html.erb", "app/views/spree/admin/wholesalers/edit.html.erb", "app/views/spree/admin/wholesalers/index.html.erb", "app/views/spree/admin/wholesalers/new.html.erb", "app/views/spree/admin/wholesalers/show.html.erb", "app/views/spree/checkout/_summary.html.erb", "app/views/spree/hooks/_cart_item_price.html.erb", "app/views/spree/hooks/_cart_item_total.html.erb", "app/views/spree/hooks/_product_wholesale_price.html.erb", "app/views/spree/hooks/_products_wholesale_price.html.erb", "app/views/spree/hooks/_wholesale_customer.html.erb", "app/views/spree/hooks/_wholesale_customer_id.html.erb", "app/views/spree/hooks/_wholesale_payment_options.html.erb", "app/views/spree/orders/show.html.erb", "app/views/spree/shared/_address_form.html.erb", "app/views/spree/shared/_store_menu.html.erb", "app/views/spree/shared/_wholesale_static_content.html.erb", "app/views/spree/wholesalers/_fields.html.erb", "app/views/spree/wholesalers/edit.html.erb", "app/views/spree/wholesalers/index.html.erb", "app/views/spree/wholesalers/new.html.erb", "app/views/spree/wholesalers/show.html.erb", "config/locales/en.yml", "config/routes.rb", "db/migrate/20120113164801_install_spree_wholesale.rb", "lib/generators/spree_wholesale/install_generator.rb", "lib/spree_wholesale.rb", "lib/spree_wholesale/engine.rb", "lib/spree_wholesale/version.rb", "lib/tasks/spree_wholesale.rake", "spree_wholesale.gemspec", "test/dummy_hooks/after_migrate.rb.sample", "test/dummy_hooks/before_migrate.rb", "test/dummy_hooks/templates/admin/all.css", "test/dummy_hooks/templates/admin/all.js", "test/dummy_hooks/templates/store/all.css", "test/dummy_hooks/templates/store/all.js", "test/dummy_hooks/templates/store/screen.css", "test/factories.rb", "test/fixtures/spree/addresses.yml", "test/fixtures/spree/countries.yml", "test/fixtures/spree/orders.yml", "test/fixtures/spree/products.yml", "test/fixtures/spree/roles.yml", "test/fixtures/spree/states.yml", "test/fixtures/spree/variants.yml", "test/fixtures/spree/wholesalers.yml", "test/integration/spree/admin/untitled file", "test/integration/spree/admin/wholesalers_test.rb", "test/integration/spree/wholesalers_test.rb", "test/support/helper_methods.rb", "test/support/integration_case.rb", "test/test_helper.rb", "test/unit/spree/order_test.rb", "test/unit/spree/product_test.rb", "test/unit/spree/roles_test.rb", "test/unit/spree/wholesaler_test.rb"]
  s.homepage = "https://github.com/citrus/spree_wholesale"
  s.rubygems_version = "2.4.8"
  s.summary = "Wholesale accounts for Spree Commerce."
  s.test_files = ["test/dummy_hooks/after_migrate.rb.sample", "test/dummy_hooks/before_migrate.rb", "test/dummy_hooks/templates/admin/all.css", "test/dummy_hooks/templates/admin/all.js", "test/dummy_hooks/templates/store/all.css", "test/dummy_hooks/templates/store/all.js", "test/dummy_hooks/templates/store/screen.css", "test/factories.rb", "test/fixtures/spree/addresses.yml", "test/fixtures/spree/countries.yml", "test/fixtures/spree/orders.yml", "test/fixtures/spree/products.yml", "test/fixtures/spree/roles.yml", "test/fixtures/spree/states.yml", "test/fixtures/spree/variants.yml", "test/fixtures/spree/wholesalers.yml", "test/integration/spree/admin/untitled file", "test/integration/spree/admin/wholesalers_test.rb", "test/integration/spree/wholesalers_test.rb", "test/support/helper_methods.rb", "test/support/integration_case.rb", "test/test_helper.rb", "test/unit/spree/order_test.rb", "test/unit/spree/product_test.rb", "test/unit/spree/roles_test.rb", "test/unit/spree/wholesaler_test.rb"]

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<spree_core>, ["~> 3.7.14.1"])
      s.add_runtime_dependency(%q<spree_auth_devise>, ["~> 3.5.2"])
      s.add_development_dependency(%q<spree_sample>, ["~> 1.1.0"])
      s.add_development_dependency(%q<shoulda>, ["~> 3.1.0"])
      s.add_development_dependency(%q<dummier>, ["~> 0.3.2"])
      s.add_development_dependency(%q<factory_girl>, ["~> 2.6.0"])
      s.add_development_dependency(%q<capybara>, ["~> 1.1.2"])
      s.add_development_dependency(%q<sqlite3>, ["~> 1.3.4"])
    else
      s.add_dependency(%q<spree_core>, ["~> 3.7.14.1"])
      s.add_dependency(%q<spree_auth_devise>, ["~> 3.5.2"])
      s.add_dependency(%q<spree_sample>, ["~> 1.1.0"])
      s.add_dependency(%q<shoulda>, ["~> 3.1.0"])
      s.add_dependency(%q<dummier>, ["~> 0.3.2"])
      s.add_dependency(%q<factory_girl>, ["~> 2.6.0"])
      s.add_dependency(%q<capybara>, ["~> 1.1.2"])
      s.add_dependency(%q<sqlite3>, ["~> 1.3.4"])
    end
  else
    s.add_dependency(%q<spree_core>, ["~> 3.7.14.1"])
    s.add_dependency(%q<spree_auth_devise>, ["~> 3.5.2"])
    s.add_dependency(%q<spree_sample>, ["~> 1.1.0"])
    s.add_dependency(%q<shoulda>, ["~> 3.1.0"])
    s.add_dependency(%q<dummier>, ["~> 0.3.2"])
    s.add_dependency(%q<factory_girl>, ["~> 2.6.0"])
    s.add_dependency(%q<capybara>, ["~> 1.1.2"])
    s.add_dependency(%q<sqlite3>, ["~> 1.3.4"])
  end
end
