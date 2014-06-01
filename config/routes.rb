Siansmale::Application.routes.draw do

  get "programs/view"

  resources :exercises

  match '/program' => 'programs#view'
  match '/contact' => 'static#contact'
  match '/blog/lactating-breast' => 'static#blog'

  root :to => "static#home"

end
