Spree::Core::Engine.routes.prepend do
  
  namespace :admin do
    resource :highlighted_products, :only => ['show', 'update', 'edit']
    resources :products do
      member do
        post :highlight
        post :unhighlight
      end
    end
  end
  
end