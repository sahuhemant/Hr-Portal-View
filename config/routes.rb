Rails.application.routes.draw do
  root 'users#welcome'

  post '/login', to: 'application#login'
  post '/logout', to: 'application#logout'
  
  get '/employee', to: 'users#employee'
  get '/hr', to: 'users#hr'

  # get '/all_employees', to: 'employees#index', as: :all_employees

  resources :employees
  resources :events#, only: %i[create index destroy update show]
  resources :holidays#, only: %i[create index destroy update show]




  # get '/users/apply_leave', to: 'users#show'
  # resources :users
  # get '/users/apply_leave', to: 'users#new'
  # get  '/users/leave_status', to: 'users#leave_status'
  # resources :leaves, only: [:index, :show, :update]

  resources :leave_request#, only: %i[index show update]
end
