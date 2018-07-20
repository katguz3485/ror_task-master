Rails.application.routes.draw do
  devise_for :users

  resources :students do
    get :subjects
  end

  #get 'visitors', to: 'visitors#index'
  #
  resources :visitors, only: [:index]

  get 'reports', to: 'reports#subjects'



end
