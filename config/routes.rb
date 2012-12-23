Team::Application.routes.draw do
  resources :homes
  root :to => 'homes#index'
end
