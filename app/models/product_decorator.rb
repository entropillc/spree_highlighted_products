Spree::Product.class_eval do
  def highlight
    self.taxons << Spree::Taxon.find_by_id(SpreeHighlightedProducts::Config[:featured_taxon_id])
    self.update_attribute(:updated_at, Time.current)
  end

  def unhighlight
    self.taxons.delete Spree::Taxon.find_by_id(SpreeHighlightedProducts::Config[:featured_taxon_id])
    self.update_attribute(:updated_at, Time.current)
  end
  
  def highlighted?
    self.taxons.exists?(Spree::Taxon.find(SpreeHighlightedProducts::Config[:featured_taxon_id]))
  end
  
  class << self
    def highlighted
      Spree::Taxon.find_by_id(SpreeHighlightedProducts::Config[:featured_taxon_id]).products.order("updated_at DESC")
    end
  end
end