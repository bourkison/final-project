# == Route Map
#
#       Prefix Verb   URI Pattern                  Controller#Action
#         root GET    /                            pages#home
#        users GET    /users(.:format)             users#index
#              POST   /users(.:format)             users#create
#     new_user GET    /users/new(.:format)         users#new
#    edit_user GET    /users/:id/edit(.:format)    users#edit
#         user GET    /users/:id(.:format)         users#show
#              PATCH  /users/:id(.:format)         users#update
#              PUT    /users/:id(.:format)         users#update
#              DELETE /users/:id(.:format)         users#destroy
#     bookings GET    /bookings(.:format)          bookings#index
#              POST   /bookings(.:format)          bookings#create
#  new_booking GET    /bookings/new(.:format)      bookings#new
# edit_booking GET    /bookings/:id/edit(.:format) bookings#edit
#      booking GET    /bookings/:id(.:format)      bookings#show
#              PATCH  /bookings/:id(.:format)      bookings#update
#              PUT    /bookings/:id(.:format)      bookings#update
#              DELETE /bookings/:id(.:format)      bookings#destroy
#        login GET    /login(.:format)             session#new
#              POST   /login(.:format)             session#create
#              DELETE /login(.:format)             session#destroy
# 

Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root :to => 'pages#home'

  resources :users
  resources :bookings

  get '/login' => 'session#new'
  post '/login' => 'session#create'
  delete '/login' => 'session#destroy'
  
end
