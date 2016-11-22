Rails.application.routes.draw do

  resources :searches
  resources :shows do
  resources :reservations
  end

  get 'user_sessions/new'

  get 'user_sessions/create'

  get 'user_sessions/destroy'

  get 'pages/register'

  get 'pages/login'

  get 'pages/profile'

  get 'pages/home'

  get 'pages/concerts'

  get 'users/profile'


  root :to => 'pages#home'
  resources :user_sessions
  resources :users

  get 'login' => 'user_sessions#new', :as => :login
  post 'logout' => 'user_sessions#destroy', :as => :logout

end
