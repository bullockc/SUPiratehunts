Rails.application.routes.draw do
  get 'demo' => 'demo#index'        #The demo/index page gets rerouted to just /demo
  get 'demo/pageOne' => 'demo#pageOne'  #must include all views in demo here like this one

    
    
  get 'help' => 'help#index'    #The help/index page gets rerouted to just /help    

  # Default routes for hunts/tasks
  get 'hunts/' => 'hunts#index'
  get 'hunts/create' => 'hunts#create'
  get 'hunts/delete' => 'hunts#delete'
  get 'hunts/destroy' => 'hunts#destroy'
  get 'hunts/edit' => 'hunts#edit'
  get 'hunts/myHunts' => 'hunts#myHunts'
  get 'hunts/new' => 'hunts#new'
  get 'hunts/show' => 'hunts#show'
  get 'hunts/update' => 'hunts#update'
    
  get 'tasks/' => 'tasks#index'
  get 'tasks/create' => 'tasks#create'
  get 'tasks/delete' => 'tasks#delete'
  get 'tasks/destroy' => 'tasks#destroy'
  get 'tasks/edit' => 'tasks#edit'
  get 'tasks/mytasks' => 'tasks#mytasks'
  get 'tasks/new' => 'tasks#new'
  get 'tasks/show' => 'tasks#show'
  get 'tasks/update' => 'tasks#update'

  # You can have the root of your site routed with "root"
  root 'welcome#index'

    
    
  # Use default devise user routes
  devise_for :users
    
    

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

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
