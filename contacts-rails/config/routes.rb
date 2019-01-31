Rails.application.routes.draw do
    
  
  get '/users/new' => 'users#new'
  post '/users' => 'users#create'
  get '/users' => 'users#index'
  get '/users/edit' => 'users#edit'
  post '/users/edit' => 'users#update'
  get '/users/ delete' => 'users#delete'
  
  
end