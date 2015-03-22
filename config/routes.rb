Rails.application.routes.draw do

  resources :exercises
  get 'programs', to: 'programs/view'

  root :to => "exercises#index"

end
