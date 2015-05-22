Rails.application.routes.draw do
  root 'projects#index'
  resources :projects
  resources :tasks, only: [:create, :destroy]
end
