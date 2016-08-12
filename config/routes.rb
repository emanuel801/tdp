Rails.application.routes.draw do
  resources :cloud_marcos
  resources :cloud_perfils
  get 'archivos/subir_archivos'

  get 'archivos/listar_archivos'

  get 'archivos/borrar_archivos'

  get 'archivos/guardar_comentarios'

  get 'test_sesiones/iniciar_sesion'

  get 'test_sesiones/cerrar_sesion'

  get 'test_sesiones/bienvenida'
  
  post "test_sesiones/iniciar_sesion"
  
  get "archivos/subir_archivos"
  post "archivos/subir_archivos"
  get "archivos/listar_archivos"
  post "archivos/borrar_archivos"
  get "archivos/ver"
  post "archivos/ver"
  	
  resources :cloud_tdps

root :to => 'test_sesiones#iniciar_sesion'
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
