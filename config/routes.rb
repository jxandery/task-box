Rails.application.routes.draw do
  resources :users, only: [:new, :index, :create]
  resources :tasks, only: [:index]

  get     '/login',   to: 'sessions#new'
  post    '/login',   to: 'sessions#create'
end
