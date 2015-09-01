Rails.application.routes.draw do


  resources :archives
  resources :visits
  root 'static_pages#home'
  get 'signup'  => 'users#new'
  get 'logout'  => 'sessions#destroy'
  get    'login'   => 'sessions#new'
  post   'login'   => 'sessions#create'
  delete 'logout'  => 'sessions#destroy'


  get '/about' => 'static_pages#about'
  get '/contact' => 'static_pages#contact'
  get '/admin' => 'static_pages#admin'

  get '/breakfast' => 'food_categories#breakfast'
  get '/lunch' => 'food_categories#lunch'
  get '/dinner' => 'food_categories#dinner'

  get '/breakfast/food_items' => 'foods#breakfast_food_items'
  get '/breakfast/recipes' => 'recipes#breakfast_recipes'
  get '/breakfast/snacks' => 'foods#breakfast_food_items'

  get '/lunch/food_items' => 'foods#lunch_food_items'
  get '/lunch/recipes' => 'recipes#lunch_recipes'
  get '/lunch/snacks' => 'foods#lunch_food_items'

  get '/dinner/food_items' => 'foods#dinner_food_items'
  get '/dinner/recipes' => 'recipes#dinner_recipes'
  get '/dinner/snacks' => 'foods#dinner_food_items'


  get '/archives/folder/january' => 'archives#january'
  get '/archives/folder/february' => 'archives#february'
  get '/archives/folder/march' => 'archives#march'
  get '/archives/folder/april' => 'archives#april'
  get '/archives/folder/may' => 'archives#may'
  get '/archives/folder/june' => 'archives#june'
  get '/archives/folder/july' => 'archives#july'
  get '/archives/folder/august' => 'archives#august'
  get '/archives/folder/september' => 'archives#september'
  get '/archives/folder/november' => 'archives#november'
  get '/archives/folder/december' => 'archives#december'



  resources :food_categories
  resources :blog_posts
  resources :user_posts
  resources :comments
  resources :replies
  resources :recipes
  resources :restaurants
  resources :fast_foods
  resources :foods
  resources :users
  resources :static_pages
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
