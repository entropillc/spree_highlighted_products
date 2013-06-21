Deface::Override.new(:virtual_path => "spree/admin/configurations/index",
                     :name => "add_highlighted_products_link",
                     :insert_after => "[data-hook='admin_configurations_menu'], #admin_configurations_menu[data-hook]",
                     :text => "<tr>
      <td><%= link_to t(\"highlighted\"), admin_highlighted_products_path %></td>
      <td><%= t(\"highlighted_products_description\") %></td>
      </tr>")