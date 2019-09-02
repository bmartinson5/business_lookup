Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  namespace :v1 do
    get '/business/name/', to: 'businesses#search_name'
    get '/business/location/', to: 'businesses#search_location'
    get '/business/most_branches/', to: 'businesses#most_branches'
    get '/business/least_branches/', to: 'businesses#least_branches'
    get '/business/random/', to: 'businesses#random'
    get '/business/oldest/', to: 'businesses#oldest'
    get '/business/newest/', to: 'businesses#newest'
    resources :businesses
  end
end
