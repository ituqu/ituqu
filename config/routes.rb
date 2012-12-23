Team::Application.routes.draw do
  devise_for :users

  resources :users

  resources :groups

  resources :homes
  root :to => 'homes#index'
end
