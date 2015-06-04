Rails.application.routes.draw do

  root 'restaurants#index'

  resources :restaurants, only: [:index, :show] do
    resources :manus, only: [:index];
    resources :tables, only: [:show];
  end 

  resources :tables, only: [:show] do
    member do
      post :order 
    end
  end



end
