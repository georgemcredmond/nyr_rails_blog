Rails.application.routes.draw do
  get 'sessions/new'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html


# Welcome controller
  get "/" 				=> "welcome#index"

#Users

  get "/users" 				=> "users#index", as:"users"
  get "/users/new"			=> "users#new", as:"new_user"
  post "/users"				=> "users#create"
  get "/users/:id"			=> "users#show", as: "user"
  get "/users/:id/edit"		=> "users#edit", as: "edit_user"
  put "/users/:id"			=> "users#update"
  patch "users/:id"			=> "users#update"
  delete "/users/:id"		=> "users#destroy"

  #Sessions
  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  get   '/logout',  to: 'sessions#destroy'

  #Posts
  

  
end
