class Spree::HighlightedProductsConfiguration < Spree::Preferences::Configuration

  preference :enabled, :boolean, :default => false
  preference :featured_taxon_id, :integer, :default => 0

end