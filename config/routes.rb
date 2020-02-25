Rails.application.routes.draw do
  devise_for :users
  root "feelings#index"
  resources :films do
    resources :reviews do
      resources :comments
    end
  end
end
