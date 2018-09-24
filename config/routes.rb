Rails.application.routes.draw do

  post '/rate' => 'rater#create', :as => 'rate'
  resources :products
  get 'babyname/index'
  post '/add_pdf' => 'users#add_pdf'
  post 'babyname/namecorrection'
  get '/astro_upload' => "users#astro_upload"
  get '/download_atro_pdf' => "astrologies#download_atro_pdf"


  resources :casts
  resources :nakshatras
  # devise_for :users
  devise_for :users, :controllers => { registrations: 'registrations' }
  resources :welcome, only: :index
  resources :dashboard do
    member do
      post 'offer_action'
    end
  end
  resources :users
  resources :registrations
  # resources :pandits

  resources :pandits do
      member do
        post 'book_pandit'
      end
    end

  resources :numerologys, only: :index do
    collection do
      get 'get_digital'
      get 'get_friendship'
      get 'get_favorites'
      get 'lucky_number'
      get 'cell_number_match'
      get 'vechicle_number_match'
      get 'get_name_correction'
      get 'get_job_predictions'
      get 'get_fav_years_for_marriages'
    end
  end

  resources :matrimony

  resources :mantras
  resources :astrologies

  match "/matrimony/life_partner_match_report" => "matrimony#life_partner_match_report", via: [:get, :post]
  root 'welcome#index'

  get 'numerologys/luckynumber', defaults: { format: 'js' }
  get 'numerologys/cellnumbermatch' , defaults: { format: 'js' }
  get 'numerologys/vehiclenumbermatch', defaults: { format: 'js' }
  get 'numerologys/digital', defaults: { format: 'js' }
  get 'numerologys/friendship', defaults: { format: 'js' }
  get 'numerologys/getfavs', defaults: { format: 'js' }
  get 'numerologys/name_correction', defaults: {format: 'js'}
  get 'numerologys/get_job_prediction', defaults: {format: 'js'}
  get 'numerologys/get_fav_years_for_marriage', defaults: {format: 'js'}
  match '/getpandits' => "pandits#getpandits", via: [:get]
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
