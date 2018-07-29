Rails.application.routes.draw do
  devise_for :users
  get 'user_tasks/create'
  resources :tasks do
  resources :user_tasks, only: :create
  end
  resources :user_tasks, only: :index
  root 'tasks#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
