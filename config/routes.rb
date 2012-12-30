Team::Application.routes.draw do
  devise_for :users , :controllers => { :registrations => "registrations" }
  resources :users, :except => [:index,:new,:create]
  resources :groups
  resources :homes
  root :to => 'homes#index'
end
