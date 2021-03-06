Rails.application.routes.draw do
  get 'sessions/new'

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
 
  root 'tasks#index'
  
  #task paths
  get 'tasks' => 'tasks#index'

  get 'tasks/new' => 'tasks#new'
  post 'tasks' => 'tasks#create'
  
  get 'tasks/:id' => 'tasks#view', as: 'task'
  delete 'tasks/:id' => 'tasks#destroy'
  
  #user/authentication paths
  #get 'login', to: redirect('/auth/google_oauth2'), as: 'login'
  get 'logout', to: 'sessions#destroy', as: 'logout'
  get 'auth/:provider/callback', to: 'sessions#create'
  get 'auth/failure', to: redirect('/')
  get 'me', to: 'me#profile', as: 'me'
  #login page
  get 'login' => 'home#show', as: 'login'
  get 'google-login', to: redirect('/auth/google_oauth2')
  get 'facebook-login', to: redirect('/auth/facebook')
  
  get 'user/edit/:id', to: 'users#edit', as: 'edit_user'
  patch 'user/:id', to: 'users#update'
  
  get 'user/:id' => 'users#show', as: 'user'
  delete 'user/:id' => 'users#destroy'

  #static pages
  get '/learn' => 'pages#learn'
  
  #admin page
  get '/admin' => 'users#admin'
  
  
  
end
