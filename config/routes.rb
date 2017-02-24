Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root to: 'dashboards#index'

  resources :dashboards
  resources :calendars, only: :index
  resources :sprints
  resources :meetings
  resources :absences
  namespace :team do
    resources :members
  end
end
