

Rails.application.routes.draw do
  root to: "tasks#index"
  # create a new task
  get "new", to: "tasks#new"
  post "tasks", to: "tasks#create"
  #update
  get ":id/edit", to:"tasks#edit", as: "edit"
  patch ":id", to: "tasks#update", as: "task"
  # show an individual task
  get ":id", to: "tasks#show", as: "show"

  delete ":id", to: "tasks#destroy", as: "delete"
end
