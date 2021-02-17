Rails.application.routes.draw do
  get 'reviews/new'
  get 'reviews/create'
#   #  Prefix  Verb    URI Pattern            Controller#Action
#     restaurants  GET     /restaurants           restaurants#index
#                  POST    /restaurants           restaurants#create
#  new_restaurant  GET     /restaurants/new       restaurants#new
# edit_restaurant  GET     /restaurants/:id/edit  restaurants#edit
#      restaurant  GET     /restaurants/:id       restaurants#show
#                  PATCH   /restaurants/:id       restaurants#update
#                  DELETE  /restaurants/:id       restaurants#destroy
  resources :restaurants
end
