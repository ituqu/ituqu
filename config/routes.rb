Team::Application.routes.draw do
  #devise_for :users , :controllers => { :registrations => "registrations" }
  devise_for :users
  resources :users, :except => [:index,:new,:create]
  resources :groups
  resources :homes
  root :to => 'homes#index'
end
