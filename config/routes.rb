Rails.application.routes.draw do
  resources :credit_cards
  resources :addresses
  resources :customers
  resources :cruises
  resources :cabins
  resources :charges
  resources :payments
  resources :harbours
  resources :ships
  get 'travelagent/index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
root 'travelagent#index'
end