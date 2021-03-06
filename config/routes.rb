Rails.application.routes.draw do
  
  get 'sessions/new'

  get 'sessions/create'

  get 'sessions/destroy'

  resources :categories
  resource :session, only: [ :new, :create, :destroy]
  resources :users
  get 'registagree', to: 'users#registagree'
  get 'menteeagree', to: 'users#menteeagree'
  get 'mentoragree', to: 'users#mentoragree'
  get 'home', to: 'users#home'
  get 'newmentee', to: 'users#newmentee'
  get 'test', to: 'users#test'
  get 'tips', to: 'users#tips'
  get 'group', to: 'users#group'
  get 'group1', to: 'users#group1'
  get 'group2', to: 'users#group2'
  get 'group3', to: 'users#group3'
  get 'group4', to: 'users#group4'
  get 'group5', to: 'users#group5'
  get 'group6', to: 'users#group6'
  get 'group7', to: 'users#group7'
  get 'group8', to: 'users#group8'
  get 'group9', to: 'users#group9'
  get 'group10', to: 'users#group10'
  get 'group11', to: 'users#group11'
  get 'group12', to: 'users#group12'
  get 'group13', to: 'users#group13'
  get 'group14', to: 'users#group14'
  get 'group15', to: 'users#group15'
  get 'group16', to: 'users#group16'
  get 'group17', to: 'users#group17'
  root to:'users#group'

  get 'register', to: 'users#new'
  get 'signin', to: 'sessions#new'
  get 'signout', to: 'sessions#destroy'

  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
#  get :home, :form, controller: :pages
#  post :about, controller: :pages
# get :about, controller: :pages, path: :me
#  resources :people
#  get "welcome/say_hello" => "welcome#say"
#  get "welcome" => "welcome#index"
  #設定首頁

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
