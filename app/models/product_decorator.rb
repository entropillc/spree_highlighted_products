Spree::Product.class_eval do
  def highlight
    self.update_attribute(:highlighted_at, Time.current)
  end

  def unhighlight
    self.update_attribute(:highlighted_at, nil)
  end
  
  class << self
    def highlighted
      self.where("highlighted_at is not null").order("highlighted_at DESC")
    end
  end
end