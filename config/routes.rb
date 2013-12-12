OneGlassIsNotEnough::Application.routes.draw do
  resources :brands

  resources :surveys

  get "brands/new"
  resources :wines
  resources :users do
    member do
      get :following, :followers
    end
  end
  resources :sessions,      only: [:new, :create, :destroy]
  resources :microposts,    only: [:create, :destroy]
  resources :relationships, only: [:create, :destroy]

  get "users/new"
  get "page/contact"
  get "page/help"
  get "page/terms"
  get "page/privacy"
  get "home/index"
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  root 'home#index'

  get "/post" => 'users#post'

  get "/wine" => 'wines#index'
  get "/brands" => 'brands#index'
  get "/home" => 'home#index'
  get "/contact" => 'page#contact'
  get "/help" => 'page#help'
  get "/privacy" => 'page#privacy'
  get "/terms" => 'page#terms'
  get "/about" => 'page#about'
  get "/resources" => 'page#resources'
  get "/survey" => 'surveys#index'

  
  get "/survey1" => 'page#survey1'
  get "/survey2" => 'page#survey2'
  get "/survey3" => 'page#survey3'
  get "/survey4" => 'page#survey4'
  get "/survey5" => 'page#survey5'
  get "/add" => 'page#add'
  get "/recipes" => 'page#recipes'
  get "/recipes1" => 'page#recipes1'
  get "/recipes2" => 'page#recipes2'
  get "/recipes3" => 'page#recipes3'
  get "/recipes4" => 'page#recipes4'
  get "/recipes5" => 'page#recipes5'
  get "/recipes6" => 'page#recipes6'
  get "/recipes7" => 'page#recipes7'
  get "/recipes8" => 'page#recipes8'
  get "/facts" => 'page#facts'
  get "/jargon" => 'page#jargon'
  get "/newsletter" => 'page#newsletter'



  match '/signup',  to: 'users#new',  via: 'get'
  match '/signin',  to: 'sessions#new', via: 'get'
  match '/signout', to: 'sessions#destroy', via: 'delete'

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
