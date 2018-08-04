# frozen_string_literal: true

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
  # get 'visitor', to: 'visitors#index'
  #

  resources :subject_items
  get 'report/subjects', to: 'reports#subjects'

  resources :visitors, only: [:index]
end
