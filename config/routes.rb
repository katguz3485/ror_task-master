Rails.application.routes.draw do
  resources :subject_item_notes
  resources :subject_items
  resources :teachers
  resources :participations
  resources :participations
  resources :students
  resources :users
  resources :students do
    get :subjects
  end
end
