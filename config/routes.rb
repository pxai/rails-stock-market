Rails.application.routes.draw do


  devise_for :users
  get 'welcome/index', to: 'welcome#index'

  get 'my_portfolio', to: 'users#my_portfolio'
  get 'my_friends', to: 'users#my_friends'
  get 'search_stocks', to: 'stocks#search'
  get 'search_friends', to: 'users#search'
  post 'add_friend', to: 'users#add_friend'

  resources :users, only: [:show]
  resources :friendships

  # Custom route
  devise_scope :user do get '/login' => 'devise/sessions#new' end
  root 'welcome#index'
end
