#app for contacts app

require 'sinatra'
require 'sinatra/reloader'
require 'sinatra/activerecord'
require 'erb'

set :database, {adapter: 'sqlite3', database: 'test.db'}

class Contact < ActiveRecord::Base
end

get '/contacts' do
     @contacts = Contact.all 
    erb :contacts
end

get '/contacts/new' do
    erb :new

end 

post '/contacts' do
        contact=Contact.new
        contact.first_name= params[:first_name]
        contact.last_name= params[:last_name]
        contact.phone= params[:phone]
        contact.email= params[:email]
        contact.address= params[:address]
        contact.city= params[:city]
        contact.state= params[:state]
        contact.zip= params[:zip]
        contact.save
        redirect '/contacts'
end  
 
get '/contacts/edit' do
    @contact = Contact.find(params[:id])

       erb :edit
end    

post '/contacts/edit' do
    contact = Contact.find(params[:id])
    contact.first_name = params[:first_name]
    contact.last_name = params[:last_name]
    contact.phone = params[:phone]
    contact.email = params[:email]
    contact.address = params[:address]
    contact.city = params[:city]
    contact.zip = params[:zip]
    contact.save
    redirect '/contacts'
end

get '/contacts/search' do
     
    erb :search
end 

post '/contacts/search' do
    
     query = "%#{params[:query]}%"
      @contact = Contact.where("last_name Like? OR first_name Like?", query, query) 
         @contact.each do |q|
         q.first_name 
         q.last_name 
         q.phone 
         q.email 
         q.address 
         q.city 
         q.state 
         q.zip 

    end  
end

    