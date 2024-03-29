WolkenWebShop::Application.routes.draw do
  get "kasse/index"

  get "produkt_katalog/index"
  post "produkt_katalog/index"
  post "produkt_katalog/search"
  post "produkt_katalog/add"
  post "home/index"
  post "kasse/buy"
  get "home/index"

  get "user/index"
  get "user/pba"
  post "user/erg_expgl"
  post "user/erg_gam"

  # 10.12.2012 	
  get "user/abc_an"	
  get "user/erg_abc_an"

  # 11.12.2012
  get "user/stueckliste"
  post "user/erg_stueckliste" 	

  #	12.12.2012
  post "produkt_katalog/delete"
   	
  # 15.01.2013 
  get "user/auftragsverfolgung"

  root :to => "home#index"

  match "produkt_katalog/delete" => "ProduktKatalog#delete", :as => :delete

  # The priority is based upon order of creation:
  # first created -> highest priority.

  # Sample of regular route:
  #   match 'products/:id' => 'catalog#view'
  # Keep in mind you can assign values other than :controller and :action

  # Sample of named route:
  #   match 'products/:id/purchase' => 'catalog#purchase', :as => :purchase
  # This route can be invoked with purchase_url(:id => product.id)

  # Sample resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Sample resource route with options:
  #   resources :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

  # Sample resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Sample resource route with more complex sub-resources
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', :on => :collection
  #     end
  #   end

  # Sample resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end

  # You can have the root of your site routed with "root"
  # just remember to delete public/index.html.
  # root :to => 'welcome#index'

  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id))(.:format)'
end
