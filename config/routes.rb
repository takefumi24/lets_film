Rails.application.routes.draw do
  root "feelings#index"
  resources :films
end
