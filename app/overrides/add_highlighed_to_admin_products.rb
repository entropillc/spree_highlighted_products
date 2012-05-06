Deface::Override.new(:virtual_path => %q{spree/admin/products/index},
                     :name => %q{add_highlighted_products_to_admin_products},
                     :replace => %q{[data-hook='admin_products_index_row_actions']},
                     :text => %q{
                       <td>
                         <%= link_to_edit product, :class => 'edit' unless product.deleted? %>
                         &nbsp;
                         <%= link_to_clone product, :class => 'clone' %>
                         &nbsp;
                         <%= link_to_delete product unless product.deleted? %>
                         &nbsp;
                         <% if product.highlighted_at.blank? %>
                            <%= link_to(t("highlight_products.do_highlight"), highlight_admin_product_url(product), :method => :post) unless product.deleted? %>
                          <% else %>
                            <%= link_to(t("highlight_products.do_unhighlight"), unhighlight_admin_product_url(product), :method => :post) unless product.deleted? %>
                          <% end %>
                       </td>
                       
                     })
