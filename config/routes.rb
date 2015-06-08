Rails.application.routes.draw do
   resources :posts
   root 'posts#index'

   resources :users
   resources :categories
   end
