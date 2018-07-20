Rails.application.routes.draw do
  devise_for :users

  root to: 'visitors#index'

  resources :students do
    get :subjects
  end

  resources :teachers do
    get :subjects
  end

  #get 'visitors', to: 'visitors#index'
  #

  get 'reports', to: 'reports#subjects'

  resources :visitors, only: [:index]





end
