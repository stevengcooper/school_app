Rails.application.routes.draw do
  get 'parent_authenticate/login'
  post 'parent_authenticate/login'

  get 'parent_authenticate/logout'
  post 'parent_authenticate/logout'

  get 'student_authenticate/login'
  post 'student_authenticate/logout'

  get 'student_authenticate/logout'
  post 'student_authenticate/logout'

  get 'teacher_authenticate/login'
  post 'teacher_authenticate/login'

  get 'teacher_authenticate/logout'
  post 'teacher_authenticate/logout'

  resources :teachers
  resources :dashboards
  root 'dashboards#index'

  get 'authenticate/login'
  post 'authenticate/login'

  get 'authenticate/logout'
  post 'authenticate/logout'

  resources :grades
  resources :parents
  resources :students
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
