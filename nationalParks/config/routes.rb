NationalParks::Application.routes.draw do  resources :parks
  resources :microposts
  get '/users/avp/:id' => 'parks#show', as: 'users_avp'
  get 'profiles/:id' => 'users#show', as: 'profiles'
  get "parks/index"
  devise_for :users
  root :to => "parks#index"
end
