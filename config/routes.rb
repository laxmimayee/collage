Collage::Application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  post "cstudents/newstudent"
  get "cstudents/newstudent"
  
  get "cstudents/liststudent"
  
  get "cstudents/studentlogin"
  post "cstudents/studentlogin"
  
  get "cstudents/addstudent"
  post "cstudents/addstudent"
  patch "cstudents/addstudent"
  
  get "cstudents/forgotpwd"
  post "cstudents/forgotpwd"
  
  get "cstudents/mainpage"
  post "cstudents/mainpage"
  
  get "cstudents/login"
  post "cstudents/login"
 
  
  get "/marks/enter_marks_form"
  post "/marks/insert_marks"
  get "/marks/insert_marks"
  get "cstudents/fullname"
  
  get "cstudents/view_details"
  
  get "cstudents/edit_details"
  post "cstudents/edit_details"
  
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  root 'cstudents#studentlogin'
  

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
