NationalParks::Application.routes.draw do  resources :parks
  resources :microposts
  get 'profiles/:id' => 'users#show'
  get "parks/index"
  devise_for :users
  root :to => "parks#index"
end
