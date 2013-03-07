Team::Application.routes.draw do
  devise_for :users
  resources :users, :except => [:index,:new,:create]
  resources :groups
  resources :groupships
  resources :homes
  root :to => 'homes#index'
end