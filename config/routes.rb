Pmonline::Application.routes.draw do
	resources :users
	resources :sessions, :only => [ :new, :create, :destroy ]
  get "sessions/new"

	match '/signup', :to => 'users#new'
	match '/signin', :to => 'sessions#new'
	match '/signout', :to => 'sessions#destroy'

  match '/about_the_author', :to => 'pages#about_the_author'
  match '/about_the_book', :to => 'pages#about_the_book'
  match '/blog', :to => 'pages#blog'
  match '/buy_things', :to => 'pages#buy_things'
  match '/contact', :to => 'pages#contact'
  match '/get_involved', :to => 'pages#get_involved'
  match '/home', :to => 'pages#home'
  match '/mathpunx', :to => 'pages#mathpunx'
  match '/networks', :to => 'pages#networks'

	# Boy, I wanted this to work...
=begin
static_pages = %w[about_the_author about_the_book blog buy_things contact get_involved home mathpunx_login networks]
	static_pages.each do |pagename|
		match '/#{ pagename }', :to => 'pages##{ pagename }'
	end
=end

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

  root :to => 'pages#home'
end
