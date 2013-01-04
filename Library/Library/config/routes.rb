Library::Application.routes.draw do  
  
  resources :books do
    member do
      get 'crop'
    end
  end  
  
  resources :books do
    resources :reviews
  end
 
  # get 'books/:id/crop', to: 'books#crop', as: :crop_book

  get 'tags/:tag', to: 'books#index', as: :tag
  
  get '/login', :to => 'sessions#new', :as => :login
  get '/logout', :to => 'sessions#destroy'
  
  match '/auth/:provider/callback', :to => 'sessions#create'
  match '/auth/failure', :to => 'sessions#failure'
    
  root :to => 'books#index'
end
