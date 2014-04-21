NationalParks::Application.routes.draw do  resources :parks
  resources :microposts
  get 'profile', to: 'users#show'
  get "parks/index"
  devise_for :users
  root :to => "parks#index"
end
