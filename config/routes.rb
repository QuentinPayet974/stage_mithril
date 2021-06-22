Rails.application.routes.draw do
  devise_for :users
  resources :comptes
  resources :students
  resources :classrooms
  resources :teachers

  root to: "singlepages#welcome"

  get 'about', to: 'singlepages#about'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
