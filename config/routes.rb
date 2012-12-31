Team::Application.routes.draw do
<<<<<<< HEAD
  devise_for :users 
=======
  #devise_for :users , :controllers => { :registrations => "registrations" }
  devise_for :users
>>>>>>> e43b70edde82838cfff69c982eeca78e6c6713e4
  resources :users, :except => [:index,:new,:create]
  resources :groups
  resources :homes
  root :to => 'teams#index'
end
