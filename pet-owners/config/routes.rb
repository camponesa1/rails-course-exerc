Rails.application.routes.draw do
    
  get '/owners/new' => 'owners#new'
  post '/owners' => 'owners#create'
  get '/owners' => 'owners#index'
  get '/owners/edit' => 'owners#edit'
  post '/owners/edit' => 'owners#update'
  
  get '/owners/delete' => 'owners#delete'
  post '/owners/delete' => 'owners#index'
  
  get '/owners/show' => 'owners#show'
  
  
  get '/pets/new' => 'pets#new'
  post '/pets' => 'pets#create'
  get '/pets' => 'pets#index'
  get '/pets/edit' => 'pets#edit'
  post '/pets/edit' => 'pets#update'
  
end
