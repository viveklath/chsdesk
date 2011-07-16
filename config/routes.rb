Chsdesk::Application.routes.draw do
  resources :societies
  resources :transaction_type_masters
  resources :ledger_details
  resources :committees
  resources :bills
  resources :bill_transactions
  resources :bill_setups
  resources :bill_details
  resources :account_transactions
  resources :account_groups
#  get "password_resets/new"
  resources :password_resets
  resources :members
  resources :sessions
  resources :logins
  
  get "logout" => "sessions#destroy", :as => "logout"
  get "login" => "sessions#new", :as => "login"
  get "signup" => "logins#new", :as => "signup"
  root :to => "home#index"
  
  match '/contact', :to => 'pages#contact'
  match '/about',   :to => 'pages#about'
  match '/help',    :to => 'pages#help'
  match '/unitsetup',  :to => 'units#index'
  match '/master',  :to => 'societies#index'
  match '/assignmember',  :to => 'members#index'

 match '/transaction_type_masters',  :to => 'transaction_type_masters#index'
 match '/ledger_details',  :to => 'ledger_details#index'
 match '/committees',  :to => 'committees#index'
 match '/bills',  :to => 'bills#index'
 match '/bill_transactions',  :to => 'bill_transactions#index'
 match '/bill_setups',  :to => 'bill_setups#index'
 match '/bill_details',  :to => 'bill_details#index'
 match '/account_transactions',  :to => 'account_transactions#index'
 match '/account_groups',  :to => 'account_groups#index'

#  get "secret" => "secret#index"
  # The priority is based upon order of creation:
  # first created -> highest priority.

  # Sample of regular route:
  #   match 'products/:id' => 'catalog#view'
  # Keep in mind you can assign values other than :controller and :action

  # Sample of named route:
  #   match 'products/:id/purchase' => 'catalog#purchase', :as => :purchase
  # This route can be invoked with purchase_url(:id => product.id)

  # Sample resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Sample resource route with options:
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

  # Sample resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Sample resource route with more complex sub-resources
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', :on => :collection
  #     end
  #   end

  # Sample resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end

  # You can have the root of your site routed with "root"
  # just remember to delete public/index.html.
  # root :to => 'welcome#index'

  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id(.:format)))'
end
