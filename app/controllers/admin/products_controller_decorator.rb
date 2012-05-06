Spree::Admin::ProductsController.class_eval do
  def highlight
    @product = Spree::Product.find_by_permalink!(params[:id])
    @product.highlight
    flash[:notice] = t("highlight_products.product_has_been_highlighted")
    redirect_to collection_url
  end

  def unhighlight
    @product = Spree::Product.find_by_permalink!(params[:id])
    @product.unhighlight
    flash[:notice] = t("highlight_products.product_has_been_unhighlighted")
    redirect_to collection_url  
  end
end