Rails.application.routes.draw do
  # Read
  get 'tasks', to: 'tasks#index', as: :tasks
  # Create a task
  # need page for a form
  get 'tasks/new', to: 'tasks#new', as: :new_task
  # a place to send form and create instance
  post 'tasks', to: 'tasks#create'
  # read one task, prefix here to be singular
  get 'tasks/:id', to: 'tasks#show', as: :task
  # Update/edit
  # page for a form
  get 'tasks/:id/edit', to: 'tasks#edit', as: :edit_task
  # a place to send the form info and update the instance
  patch 'tasks/:id', to: 'tasks#update'
  # Delete
  delete 'tasks/:id', to: 'tasks#destroy'
end
