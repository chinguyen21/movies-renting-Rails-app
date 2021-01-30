Rails.application.routes.draw do
  resources :reviews
  resources :receipts
  resources :users
  resources :movies
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
