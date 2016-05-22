Rails.application.routes.draw do
  get 'sessions/new'

  root 'static_pages#home'

  get 'contact_us' => 'static_pages#contact_us', as: :static_pages_contact_us
  get 'about' => 'static_pages#about', as: :static_pages_about

  get    'login'   => 'sessions#new', as: :coach_new_session
  post   'login'   => 'sessions#create'
  delete 'logout'  => 'sessions#destroy', as: :coach_destroy_session

  get 'cadastro/new' => 'registration#new', as: :coach_new_registration
  post 'cadastro' => 'registration#create'

  get 'clientcard/new' => 'clientcard#new', as: :clientcard_new
  post 'clientcard' => 'clientcard#create'


  resources :clientcards
  resources :clients

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
