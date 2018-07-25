Rails.application.routes.draw do
  devise_for :users

  root to: 'visitors#index'

  resources :students do
    get :subjects
  end

  resources :teachers do
    get :subjects
  end

  resources :payments
  #get 'visitor', to: 'visitors#index'
  #

  get 'report/subjects', to: 'reports#subjects'

  resources :visitors, only: [:index]





end
