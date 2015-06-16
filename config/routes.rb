Rails.application.routes.draw do

  root 'restaurants#index'

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
