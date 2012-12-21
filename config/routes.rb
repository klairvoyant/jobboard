Jobboard::Application.routes.draw do
  resources :privacy_resumes

  resources :categories

  resources :salary_ranges

  resources :job_types

  resources :interest_areas

  resources :time_zones

  resources :search_preferences

  resources :file_uploads

  get "dash_board_for_recruiter/index"

  get "dash_board_for_hr/index"

  get "dashboard_for_alumni/index"

  get "welcome/signup"

  resources :resumes

  resources :privacies

  get "welcome/index"

  resources :objectives

  resources :personal_data  do
    collection do
      get 'preview'
    end
  end

  #devise_for :users
  devise_for :users,path_names: {sign_in: "login", sign_out: "logout"}, :controllers => { :registrations => "registrations", omniauth_callbacks: "omniauth_callbacks" }

  mailboxes_for :users
  get "home/index"

  resources :job_details    do
    collection do
      get 'apprentice'
    end
  end

  resources :interviews

  resources :alerts

  resources :certifications

  resources :languages

  resources :skills

  resources :educations

  resources :employment_histories

  resources :resume_job_data

  resources :resume_personal_data

  resources :linkedin_details  do

    collection do
      get 'linkedinconnect'
      get 'callback'
      get 'linkedinconnecsecond'
      get 'callbacksecond'
    end
  end

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
  #root :to => 'personal_data#new'

  #root :to => 'resumes#new'

  root :to => 'personal_data#index'




  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id))(.:format)'
end
