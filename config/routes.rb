Twitter::Application.routes.draw do
  resources :tweets do
    member do
      post :retweet
    end
  end
    
  resources :profiles do 
    member do 
      post :follow  
    end
  end

   devise_for :users
   root :to => 'tweets#index'

end
