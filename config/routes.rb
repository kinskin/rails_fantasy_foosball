Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :homes
  resources :teams
  resources :stages
  resources :scores
  resources :eliminations
  resources :quarters
  resources :semis
  resources :finals
  resources :scoreboards
end