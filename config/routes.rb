Siansmale::Application.routes.draw do

  get "programs/view"

  resources :exercises

  match '/program' => 'programs#view'

  root :to => "exercises#index"

end
