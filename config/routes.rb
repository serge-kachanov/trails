Twitter::Application.routes.draw do
  resources :tweets
  resources :profiles do 
    member do 
      post :follow  
    end
  end

   devise_for :users
   root :to => 'tweets#index'

end
