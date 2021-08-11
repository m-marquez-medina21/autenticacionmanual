Rails.application.routes.draw do
  get 'home/index'
  root 'home#index'
  get 'users/sign_up', to: 'users#new'
  post 'users', to: 'users#create'
  resources :sessions, only: [:new, :create, :destroy]
  resources :stories
  

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
