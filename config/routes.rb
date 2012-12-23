Team::Application.routes.draw do
  resources :users

  resources :groups

  resources :homes
  root :to => 'homes#index'
end
