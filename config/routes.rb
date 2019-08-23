Rails.application.routes.draw do
  get '/business/name/', to: 'businesses#search_name'
  get '/business/random/', to: 'businesses#random'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :businesses
end
