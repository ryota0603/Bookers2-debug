Rails.application.routes.draw do
  root to: "homes#top"
  devise_for :users
  resources :books
  resources :users, only: [:index,:show,:edit,:update]
  resource :favorites, only: [:create, :destroy]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
 

  
  get "home/about"=>"homes#about" , as: 'about'
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
