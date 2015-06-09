Rails.application.routes.draw do

  devise_for :users
  root 'relationships#checkins'

  # Routes for the Tracker resource:
  # CREATE
  get "/trackers/new", :controller => "trackers", :action => "new"
  post "/create_tracker", :controller => "trackers", :action => "create"

  # READ
  get "/trackers", :controller => "trackers", :action => "index"
  get "/trackers/:id", :controller => "trackers", :action => "show"

  # UPDATE
  get "/trackers/:id/edit", :controller => "trackers", :action => "edit"
  post "/update_tracker/:id", :controller => "trackers", :action => "update"

  # DELETE
  get "/delete_tracker/:id", :controller => "trackers", :action => "destroy"
  #------------------------------

  # Routes for the Relationship resource:
  # CREATE
  get "/relationships/new", :controller => "relationships", :action => "new"
  post "/create_relationship", :controller => "relationships", :action => "create"

  # READ
  get "/relationships", :controller => "relationships", :action => "index"
  get "/relationships/:id", :controller => "relationships", :action => "show"

  # UPDATE
  get "/relationships/:id/edit", :controller => "relationships", :action => "edit"
  post "/update_relationship/:id", :controller => "relationships", :action => "update"

  # DELETE
  get "/delete_relationship/:id", :controller => "relationships", :action => "destroy"
  #------------------------------

  # Routes for the User resource:
  # CREATE
  get "/users/new", :controller => "users", :action => "new"
  post "/create_user", :controller => "users", :action => "create"

  # READ
  get "/users", :controller => "users", :action => "index"
  get "/users/:id", :controller => "users", :action => "show"

  # UPDATE
  get "/users/:id/edit", :controller => "users", :action => "edit"
  post "/update_user/:id", :controller => "users", :action => "update"

  # DELETE
  get "/delete_user/:id", :controller => "users", :action => "destroy"
  #------------------------------

  # Routes for the Tag resource:
  # CREATE
  get "/tags/new", :controller => "tags", :action => "new"
  post "/create_tag", :controller => "tags", :action => "create"

  # READ
  get "/tags", :controller => "tags", :action => "index"
  get "/tags/:id", :controller => "tags", :action => "show"

  # UPDATE
  get "/tags/:id/edit", :controller => "tags", :action => "edit"
  post "/update_tag/:id", :controller => "tags", :action => "update"

  # DELETE
  get "/delete_tag/:id", :controller => "tags", :action => "destroy"

  # TAG RELATIONSHIP
   get "/manage_tags/:relationship_id", :controller => "trackers", :action => "manage"
   post "/add_tag/:relationship_id", :controller => "trackers", :action => "create"

  #------------------------------

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
