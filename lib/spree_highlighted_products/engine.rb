module SpreeHighlightedProducts
  class Engine < Rails::Engine
    engine_name 'spree_highlighted_products'
    
    initializer "spree_highlighted_products.preferences", :before => :load_config_initializers do |app|
      SpreeHighlightedProducts::Config = Spree::HighlightedProductsConfiguration.new
    end


    def self.activate
      Dir.glob(File.join(File.dirname(__FILE__), "../../app/**/*_decorator*.rb")) do |c|
        Rails.application.config.cache_classes ? require(c) : load(c)
      end
      Dir.glob(File.join(File.dirname(__FILE__), "../../app/overrides/**/*.rb")) do |c|
        Rails.application.config.cache_classes ? require(c) : load(c)
      end

      ActionController::Base.send :include, SpreeHighlightedProducts::Helpers
    end
    config.to_prepare &method(:activate).to_proc
    config.autoload_paths += %W(#{config.root}/lib)
  end
end