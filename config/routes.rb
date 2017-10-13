Rails.application.routes.draw do
  get 'my_portfolio', to: 'users#my_portfolio'
  devise_for :users
  get 'welcome/index', to: 'welcome#index'

  # Custom route
  devise_scope :user do get '/login' => 'devise/sessions#new' end
  root 'welcome#index'
end
