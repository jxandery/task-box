Rails.application.routes.draw do
  root to: 'sessions#new'

  resources :users, only: [:new, :index, :create]
  resources :tasks, only: [:index]
  resources :tasks_lists

  get     '/login',   to: 'sessions#new'
  post    '/login',   to: 'sessions#create'
  delete  '/logout',  to: 'sessions#destroy'
end
