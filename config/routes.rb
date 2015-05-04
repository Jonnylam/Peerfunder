Rails.application.routes.draw do


root :to => 'start#index'

  get 'investments/new'
  get 'users/profile'
  get 'users/dashboard'
  get 'investors' => 'users#index'
  get 'users/inbox'
  get 'companies/profile'
  get 'start/about'


  resources :companies do
    resources :profiles
    resources :rounds do
      collection do
        get 'processing_round_information'
        get 'rounds/:id/fundraisings/findalead', to: 'fundraisings#findalead'
      end
      resources :investments
      resources :fundraisings
      collection do 
        get 'fundraisings/findalead'
      end
    end
  end

resources :entrepreneurs

resources :user_sessions
resources :users do
  resources :follows
  resources :accreditations
  post :update_accreditations, :as => :update_accreditations
end

resources :invitations do
  collection do
    post :send_out_invitations, :as => :send_out_invitations
  end
end

resources :rounds

get 'login' => 'user_sessions#new', :as => :login
post 'logout' => 'user_sessions#destroy', :as => :logout

get "/messages" => redirect("/conversations")
  resources :messages do
  member do
    post :new
  end
end
resources :conversations do
  member do
    post :reply
    post :trash
    post :untrash
  end
 collection do
    get :trashbin
    post :empty_trash
 end
end



  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'

  # Example of regular route:
  #   get 'products/round:id' => 'catalog#view'

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
