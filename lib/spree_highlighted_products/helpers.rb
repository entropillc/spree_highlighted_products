module SpreeHighlightedProducts
  module Helpers
    def self.included(reciever)
      reciever.send :helper_method, :featured_taxon, :highlighted_products_enabled
    end

    def featured_taxon
      Spree::Taxon.find_by_id(SpreeHighlightedProducts::Config[:featured_taxon_id])
    end

    def highlighted_products_enabled
      SpreeHighlightedProducts::Config[:enabled]
    end
  end
end