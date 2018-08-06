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

  resources :subject_items

  resources :subject_item_notes

  get 'report/subjects', to: 'reports#subjects'

  resources :visitors, only: [:index]

end
