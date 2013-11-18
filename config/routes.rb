UrlShortener::Application.routes.draw do
  #index
  #create new url'
  #show url

  resources :users, :only => [:new, :create, :show] do
    resources :comments, :only => [:index]
    resources :posts, :only => [:index]
  end

  resources :posts , :only => [:index, :new, :create, :show] do
    resources :comments, :only => [:create, :update]
  end

  # match 'logout', :to => 'session#logout'

  root :to => 'posts#index'
end

