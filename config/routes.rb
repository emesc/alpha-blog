Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'pages#home'
  get 'about', to: 'pages#about'

  # generate all paths available to CRUD articles
  resources :articles

  # change signup page from default /users/new to /signup
  get 'signup', to: 'users#new'
  resources :users, except: [:new]
end
