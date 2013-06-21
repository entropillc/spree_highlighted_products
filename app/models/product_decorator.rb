Spree::Product.class_eval do
  def highlight
    self.taxons << Spree::Taxon.find_by_id(SpreeHighlightedProducts::Config[:featured_taxon_id])
    self.update_attribute(:updated_at, Time.current)
  end

  def unhighlight
    self.taxons.delete Spree::Taxon.find_by_id(SpreeHighlightedProducts::Config[:featured_taxon_id])
    self.update_attribute(:updated_at, Time.current)
  end
  
  class << self
    def highlighted
      Spree::Taxon.find_by_id(SpreeHighlightedProducts::Config[:featured_taxon_id]).products.order(:created_at)
    end
  end
end