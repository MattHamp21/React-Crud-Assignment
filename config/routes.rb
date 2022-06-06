Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

namespace :api do


get '/users', to: 'users#index'
post '/users', to: 'users#create'

put '/users/:id', to: 'users#update'

delete '/users/:id', to: 'users#destroy' 

end


end
