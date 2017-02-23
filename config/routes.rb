Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root to: 'dashboards#index'

  resources :dashboards do
    get :calendar, on: :collection
  end
  resources :sprints
  resources :events
  resources :absences
  namespace :team do
    resources :members
  end
end
