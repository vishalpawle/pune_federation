Rails.application.routes.draw do
  resources :scribes
  resources :messages
  resources :jobs
  resources :donations
  resources :scriberequests
resources :members do
  resources :documents


  resources :forminfos
  resources :documentinfos
  resources :serviceinfos
  resources :certificateinfos
  resources :professionalinfos
  resources :maritalinfos
  resources :disabilityinfos
  resources :contactinfos
  resources :addressinfos
  resources :personalinfos
  end
  match '/members/:member_id/tempdelete' => 'members#tempdelete', :via => [:get, :put], as: :tempdelete
  match'/scriberequests/:scriberequest_id/approverequest' => 'scriberequests#approverequest', :via =>[:get, :put ], as: :approverequest
  match'/scriberequests/:scriberequest_id/rejectrequest' => 'scriberequests#rejectrequest', :via =>[:get, :put ], as: :rejectrequest

match '/:member_id/final' => 'members#final', :via => :get,  as: :final
  match '/status' => 'members#status', :via => [:get, :put], as: :status
  match '/laststape' => 'members#laststape', :via =>[:get, :put], as: :laststape


devise_for :users, :controllers => { registrations: 'users/registrations' }


  mount Ckeditor::Engine => '/ckeditor'
match '/calenderhelp' => 'home#calenderhelp', :via => :get
  resources :activities
  resources :contacts
  resources :contents, only: [:new, :create, :edit, :update]
  resources :teams
  #get 'home/index'

  get 'home/index'
root 'home#index'
match '/tirmcontent' => 'home#tirmcontent', :via =>[:get, :put], as: :tirmcontent

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".
match '/anulshow' => 'activities#anulshow', :via => :get, as: :anulshow
match '/activities/:activity_id/anulupdate' => 'activities#anulupdate', :via => [:get, :put], as: :anulupdate
  match '/dream' => 'contents#dream', :via => :get, as: :dream
  match '/about' => 'contents#about', :via => :get, as: :about

  match '/anulgenerate' => 'activities#anulgenerate', :via => [:get, :post], as: :anulgenerate
resources :circulars
  match '/tirmsconditions' => 'members#tirmsconditions', :via => [:get, :put], as: :tirmsconditions
match '/members/:member_id/clerklevel' => 'members#clerklevel', :via => [:get, :put], as: :clerklevel
match '/members/:member_id/adminlevel' => 'members#adminlevel', :via => [:get, :put], as: :adminlevel
match '/:user_id/changerole' => 'members#changerole', :via => [:get, :put], as: :changerole
match '/members/:member_id/suspend' => 'members#suspend', :via => [:get, :put], as: :suspend
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
