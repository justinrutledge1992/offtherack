Rails.application.routes.draw do

  root 'static_pages#index'
  
  get 'index'                 => 'static_pages#index'
  get 'about'                 => 'static_pages#about'
  get 'gallery'               => 'static_pages#gallery'
  get 'consignment'           => 'static_pages#consignment'
  get 'contact'               => 'static_pages#contact'
  
  get 'contact'               => 'static_pages#contact'
  
  get 'upload_photo'          => 'application#uploadPhoto'
  get 'edit_gallery'          => 'static_pages#edit_gallery'
  get 'destroy_photo'         => 'photos#destroy'
  get 'admin'                 => 'static_pages#admin'
  get 'admin_login'           => 'application#admin_login'
  get 'admin_logout'          => 'application#admin_logout'
  get 'submit_email'          => 'application#submitEmailAddress'
  get 'mailing_list'          => 'static_pages#mailing_list'
  get 'download_mailing_list' => 'application#download_mailing_list'
  
  get 'facebook'              => 'application#routeToFacebook'
  get 'instagram'             => 'application#routeToInstagram'
  get 'twitter'               => 'application#routeToTwitter'
  
  resources :photos, only: [:new, :create, :destroy]

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
