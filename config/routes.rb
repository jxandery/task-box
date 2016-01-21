Rails.application.routes.draw do
  root to: 'sessions#new'

  resources :users, only: [:new, :index, :create]
  resources :tasks
  resources :tasks_lists do

  end

  get     '/login',   to: 'sessions#new'
  post    '/login',   to: 'sessions#create'
  delete  '/logout',  to: 'sessions#destroy'
end
