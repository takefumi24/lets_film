Rails.application.routes.draw do
  devise_for :users
  root "feelings#index"
  resources :films
  resources :reviews
  resources :comments
end
