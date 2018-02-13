Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'tasks', to: 'tasks#index'

  post   "tasks",          to: "tasks#create"
  # create
  get    "tasks/new",      to: "tasks#new", as: :new_task
  get    "tasks/:id/edit", to: "tasks#edit", as: :edit_task

  # show
  get 'tasks/:id', to: 'tasks#show', as: :task

  # edit
  patch  "tasks/:id",      to: "tasks#update"

  #delete
  delete "tasks/:id",      to: "tasks#destroy", as: :delete

  # resources :tasks
end
