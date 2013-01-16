Twitter::Application.routes.draw do
  resources :tweets
  resources :profiles

   devise_for :users
   root :to => 'tweets#index'

end
