Rails.application.routes.draw do


  # Routes for the Ar resource:
  # CREATE
  get "/ars/new", :controller => "ars", :action => "new"
  post "/create_ar", :controller => "ars", :action => "create"

  # READ
  get "/ars", :controller => "ars", :action => "index"
  get "/ars/:id", :controller => "ars", :action => "show"

  # UPDATE
  get "/ars/:id/edit", :controller => "ars", :action => "edit"
  post "/update_ar/:id", :controller => "ars", :action => "update"

  # DELETE
  get "/delete_ar/:id", :controller => "ars", :action => "destroy"
  #------------------------------

  # Routes for the Material resource:
  # CREATE
  get "/materials/new", :controller => "materials", :action => "new"
  post "/create_material", :controller => "materials", :action => "create"

  # READ
  get "/materials", :controller => "materials", :action => "index"
  get "/materials/:id", :controller => "materials", :action => "show"

  # UPDATE
  get "/materials/:id/edit", :controller => "materials", :action => "edit"
  post "/update_material/:id", :controller => "materials", :action => "update"

  # DELETE
  get "/delete_material/:id", :controller => "materials", :action => "destroy"
  #------------------------------

  # Routes for the Color resource:
  # CREATE
  get "/colors/new", :controller => "colors", :action => "new"
  post "/create_color", :controller => "colors", :action => "create"

  # READ
  get "/colors", :controller => "colors", :action => "index"
  get "/colors/:id", :controller => "colors", :action => "show"

  # UPDATE
  get "/colors/:id/edit", :controller => "colors", :action => "edit"
  post "/update_color/:id", :controller => "colors", :action => "update"

  # DELETE
  get "/delete_color/:id", :controller => "colors", :action => "destroy"
  #------------------------------

  # Routes for the Size resource:
  # CREATE
  get "/sizes/new", :controller => "sizes", :action => "new"
  post "/create_size", :controller => "sizes", :action => "create"

  # READ
  get "/sizes", :controller => "sizes", :action => "index"
  get "/sizes/:id", :controller => "sizes", :action => "show"

  # UPDATE
  get "/sizes/:id/edit", :controller => "sizes", :action => "edit"
  post "/update_size/:id", :controller => "sizes", :action => "update"

  # DELETE
  get "/delete_size/:id", :controller => "sizes", :action => "destroy"
  #------------------------------

  # Routes for the Product resource:
  # CREATE
  get "/products/new", :controller => "products", :action => "new"
  post "/create_product", :controller => "products", :action => "create"

  # READ
  get "/products", :controller => "products", :action => "index"
  get "/products/:id", :controller => "products", :action => "show"

  # UPDATE
  get "/products/:id/edit", :controller => "products", :action => "edit"
  post "/update_product/:id", :controller => "products", :action => "update"

  # DELETE
  get "/delete_product/:id", :controller => "products", :action => "destroy"
  #------------------------------

  # Routes for the Proposal resource:
  # CREATE
  get "/proposals/new", :controller => "proposals", :action => "new"
  post "/create_proposal", :controller => "proposals", :action => "create"

  # READ
  get "/proposals", :controller => "proposals", :action => "index"
  get "/proposals/:id", :controller => "proposals", :action => "show"

  # UPDATE
  get "/proposals/:id/edit", :controller => "proposals", :action => "edit"
  post "/update_proposal/:id", :controller => "proposals", :action => "update"

  # DELETE
  get "/delete_proposal/:id", :controller => "proposals", :action => "destroy"

  # CONFIRM - confirms the vendor to win the contract
  get "/proposals/:id/select_confirm/:user_id",    :controller => "proposals", :action => "select_confirm"
  get "/proposals/:id/select/:user_id",    :controller => "proposals", :action => "select"

  #------------------------------

  # Routes for the Proposalprods resource:
  # CREATE
  get "/proposalprods/new", :controller => "proposalprods", :action => "new"
  post "/create_proposalprods", :controller => "proposalprods", :action => "create"

  # READ
  get "/proposalprods", :controller => "proposalprods", :action => "index"
  get "/proposalprods/:id", :controller => "proposalprods", :action => "show"

  # UPDATE
  get "/proposalprods/:id/edit", :controller => "proposalprods", :action => "edit"
  post "/update_proposalprods/:id", :controller => "proposalprods", :action => "update"

  # DELETE
  get "/delete_proposalprods/:id", :controller => "proposalprods", :action => "destroy"

  # Routes for the About resource:
  # CREATE
  get "/abouts", :controller => "abouts", :action => "index"



  #------------------------------


  devise_for :users
  root 'abouts#index'

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Example resource route with options:
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

  # Example resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Example resource route with more complex sub-resources:
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', on: :collection
  #     end
  #   end

  # Example resource route with concerns:
  #   concern :toggleable do
  #     post 'toggle'
  #   end
  #   resources :posts, concerns: :toggleable
  #   resources :photos, concerns: :toggleable

  # Example resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end
end
