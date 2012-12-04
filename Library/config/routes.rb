Library::Application.routes.draw do
  resources :omniauth_authorize
  
  resources :books do
    member do
      get 'crop'
    end
  end
  
  match 'auth/:provider/callback', to: 'sessions#create'
  match 'auth/failure', to: redirect('/')
  match 'signout', to: 'sessions#destroy', as: 'signout'
  
  
  resources :books do
    resources :reviews
  end
 
  # get 'books/:id/crop', to: 'books#crop', as: :crop_book
  
  #devise_scope :user do 
  #  get "login", :to => "devise/sessions#new" 
  #  get "register", :to => "registrations#new" 
  #  get "settings", :to => "registrations#edit" 
  #  get "logout", :to => "devise/sessions#destroy"
  #end 
  

  get 'tags/:tag', to: 'books#index', as: :tag
  
  get   '/login', :to => 'sessions#new', :as => :login
  match '/auth/:provider/callback', :to => 'sessions#create'
  match '/auth/failure', :to => 'sessions#failure'
  
  get '/logout', :to => 'sessions#destroy'

  # You can have the root of your site routed with "root"
  # just remember to delete public/index.html.
  root :to => 'books#index'
end
