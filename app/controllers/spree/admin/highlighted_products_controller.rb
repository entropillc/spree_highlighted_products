class Spree::Admin::HighlightedProductsController < Spree::Admin::BaseController

  def show
    @config = Spree::HighlightedProductsConfiguration.new
  end

  def edit
    @config = Spree::HighlightedProductsConfiguration.new
  end

  def update
    config = Spree::HighlightedProductsConfiguration.new

    params.each do |name, value|
      next unless config.has_preference? name
      config[name] = value
    end

    redirect_to admin_highlighted_products_path
  end

end