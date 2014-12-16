=begin
Deface::Override.new(:virtual_path => 'spree/orders/edit',
                     :name => 'add_attrs_to_a_element',
                     :set_attributes => "[data-hook='cart_container']",
                     :attributes => {:class => 'new_spree_user'})
=end
