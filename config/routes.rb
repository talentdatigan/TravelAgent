Rails.application.routes.draw do
  resources :credit_cards
  resources :addresses
  resources :customers
  resources :cruises
  resources :cabins
  resources :harbours
  resources :ships
  get 'travelagent/index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'travelagent#index'
end
