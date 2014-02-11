Carreira::Application.routes.draw do

  root 'pages#pag_inicial'

  get "/home", :controller => "pages", :action => "pag_inicial"
  get "/equipe", :controller => "pages", :action => "equipe", :as => 'equipe'
  get "/produto", :controller => "pages", :action => "produto", :as => 'produto'
  get "/contato", :controller => "pages", :action => "contato", :as => 'contato'

  # Routes for the Compra resource:
  # CREATE
  get '/compras/new', controller: 'compras', action: 'new', as: 'new_compra'
  post '/compras', controller: 'compras', action: 'create', as: 'compras'

  # READ
  get '/compras', controller: 'compras', action: 'index'
  get '/compras/:id', controller: 'compras', action: 'show', as: 'compra'

  # UPDATE
  get '/compras/:id/edit', controller: 'compras', action: 'edit', as: 'edit_compra'
  patch '/compras/:id', controller: 'compras', action: 'update'

  # DELETE
  delete '/compras/:id', controller: 'compras', action: 'destroy'
  #------------------------------

  # Routes for the Oficina resource:
  # CREATE
  get '/oficinas/new', controller: 'oficinas', action: 'new', as: 'new_oficina'
  post '/oficinas', controller: 'oficinas', action: 'create', as: 'oficinas'

  # READ
  get '/oficinas', controller: 'oficinas', action: 'index'
  get '/oficinas/:id', controller: 'oficinas', action: 'show', as: 'oficina'

  # UPDATE
  get '/oficinas/:id/edit', controller: 'oficinas', action: 'edit', as: 'edit_oficina'
  patch '/oficinas/:id', controller: 'oficinas', action: 'update'

  # DELETE
  delete '/oficinas/:id', controller: 'oficinas', action: 'destroy'
  #------------------------------

  # Routes for the Time resource:
  # CREATE
  get '/times/new', controller: 'times', action: 'new', as: 'new_time'
  post '/times', controller: 'times', action: 'create', as: 'times'

  # READ
  get '/times', controller: 'times', action: 'index'
  get '/times/:id', controller: 'times', action: 'show', as: 'time'

  # UPDATE
  get '/times/:id/edit', controller: 'times', action: 'edit', as: 'edit_time'
  patch '/times/:id', controller: 'times', action: 'update'

  # DELETE
  delete '/times/:id', controller: 'times', action: 'destroy'
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
