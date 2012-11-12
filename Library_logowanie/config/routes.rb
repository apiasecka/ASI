Library::Application.routes.draw do
#  devise_for :users, :path_names => {
#	:sign_in =>  "login",
#	:sign_up =>  "register",
#	:sign_out => "logout"
# }
  
   get "sign_up" => "users#new", :as => "sign_up"  
   get "log_in" => "sessions#new", :as => "log_in"  
   get "log_out" => "sessions#destroy", :as => "log_out"  

  # root :to => "users#new"  
   resources :users do
	collection do
	  get :register
	end
   end
   resources :sessions  
   resources :register
   resources :books do
    member do
      get 'crop'
    end
  end
  #end
  # get 'books/:id/crop', to: 'books#crop', as: :crop_book

  #get 'tags/:tag', to: 'books#index', as: :tag

  # You can have the root of your site routed with "root"
  # just remember to delete public/index.html.
   root :to => 'books#index'
end
