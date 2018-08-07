Rails.application.routes.draw do
  root to: 'static_pages#home'
  resources :users
  post '/users/new', to:'users#create', as:'create_user'
  get '/club', to: 'static_pages#list_users', as: 'club'
  get '/login', to: 'sessions#new', as: 'login'
  post '/login', to: 'sessions#create'
delete '/login', to: 'sessions#destroy', as: 'logout'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
