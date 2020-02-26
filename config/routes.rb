Rails.application.routes.draw do
  devise_for :users
  root "feelings#index"
  namespace :films do
    resources :searches, only: :index
  end
  resources :films do
    resources :reviews do
      resources :comments
    end
  end
end
