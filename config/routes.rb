Rails.application.routes.draw do
  resources :returneds
  resources :waitlists
  resources :renteds
  resources :tapes
  resources :clients
  resources :actors
  resources :directors
  resources :genres
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
