


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

Todo::Application.routes.draw do
  resources :users  do
    member do
      get :following, :followers
    end
  end
  resources :sessions, only: [:new, :create, :destroy]
  resources :microposts, only: [:create, :destroy]
  resources :relationships, only: [:create, :destroy]
  root  'static_pages#home'
  match '/signup',  to: 'users#new',            via: 'get'
end
