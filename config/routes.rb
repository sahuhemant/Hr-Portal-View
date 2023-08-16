# frozen_string_literal: true

Rails.application.routes.draw do
  root 'users#welcome'

  post '/login', to: 'application#login'
  post '/logout', to: 'application#logout'

  # get '/employee', to: 'users#employee'
  # get '/event', to: 'events#index'
  get '/hr', to: 'users#hr'
  get '/emp', to: 'users#emp'

  get '/leave_history', to: 'leave_requests#leave_history'

  # get '/all_employees', to: 'employees#index', as: :all_employees

  resources :employees
  resources :events
  resources :holidays
  resources :users # , only: [:new, :create, :show ]
  get 'profile', to: 'users#profile'

  # get '/users/apply_leave', to: 'users#show'
  # resources :users
  # get '/users/apply_leave', to: 'users#new'
  # get  '/users/leave_status', to: 'users#leave_status'
  # resources :leaves, only: [:index, :show, :update]

  resources :leave_requests # , only: %i[index show update]
end
