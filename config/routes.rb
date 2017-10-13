Rails.application.routes.draw do


  devise_for :users
  get 'welcome/index', to: 'welcome#index'

  get 'my_portfolio', to: 'users#my_portfolio'
  get 'search_stocks', to: 'stocks#search'

  # Custom route
  devise_scope :user do get '/login' => 'devise/sessions#new' end
  root 'welcome#index'
end
