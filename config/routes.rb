Rails.application.routes.draw do
  resources :screen_infos
  resources :condition_names
  resources :opt10075s
  resources :realtime_offered_and_bids
  resources :realtime_best_offered_and_bids
  resources :realtime_contracts
  resources :realtime_prices
  resources :balances
  resources :ordereds
  resources :orders
  resources :opt10001s
  resources :opt10080s
#  resources :opt10085s
#  resources :opw00003s
#  resources :opt10015s
  resources :opt10014s
#  resources :opt10059s
  resources :opt10059_two_twos
  resources :opt10059_two_ones
  resources :opt10059_one_twos
  resources :opt10059_one_ones
  resources :domains
  resources :themes
  get 'account/balance'

  root 'welcome#index'
  get 'welcome/index'
  get 'welcome/left'

  get 'opt10015s/where'
  get 'opt10015s/list'
#  get 'opt10015s/index'

  get 'opt10081s/where'
  get 'opt10081s/list'
  get 'opt10059s/where'
  get 'opt10059s/list'

  wash_out :receive


  resources :markets, only: [:show,:index,:new,:create]
  resources :stocks, only: [:show,:index,:new,:create]

  resources :branch_code_names, only: [:show,:index,:new,:create]
  resources :opt10015s, only: [:index]
  resources :opt10059s, only: [:index]
  resources :opt10081s, only: [:index]
  resources :opw00003s, only: [:show,:index,:new,:create]
  resources :opt10085s, only: [:show,:index,:new,:create]
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
