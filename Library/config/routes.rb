Library::Application.routes.draw do
  resources :books do
    member do
      get 'crop'
    end
  end
  
  # get 'books/:id/crop', to: 'books#crop', as: :crop_book

  get 'tags/:tag', to: 'books#index', as: :tag
  
  get   '/login', :to => 'sessions#new', :as => :login
  match '/auth/:provider/callback', :to => 'sessions#create'
  match '/auth/failure', :to => 'sessions#failure'
  
  get '/logout', :to => 'sessions#destroy'

  # You can have the root of your site routed with "root"
  # just remember to delete public/index.html.
  root :to => 'books#index'
end
