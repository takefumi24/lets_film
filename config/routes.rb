Rails.application.routes.draw do
  devise_for :users
  root "feelings#index"
  resources :films do
    resources :reviews
  end
  resources :comments
end
