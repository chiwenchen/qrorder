Rails.application.routes.draw do

  root 'restaurants#index'

  get '/register', to: 'user#new'
  get 'login', to: 'session#new'
  post 'login', to: 'session#create'
  get 'logout', to: 'session#destroy'

  resources :restaurants, only: [:index, :show] do
    member do
      get :chef
    end  
    resources :menus, only: [:index, :new, :create, :show, :edit, :update];
    resources :tables, only: [:show, :create];
  end 

  resources :tables, only: [:destroy] do
    member do
      post :order;
      post :place_order;
    end
  end

end
