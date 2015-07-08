Rails.application.routes.draw do

  resources :exercises
  resources :programs, only: [:create]

  root :to => "exercises#index"

end
