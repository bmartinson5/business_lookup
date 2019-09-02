Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  namespace :v1 do
    get '/business/name/', to: 'businesses#search_name'
    get '/business/most_branches/', to: 'businesses#most_branches'
    get '/business/random/', to: 'businesses#random'
    resources :businesses
  end
end
