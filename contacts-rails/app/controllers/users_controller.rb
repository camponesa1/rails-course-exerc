class UsersController < ApplicationController
    
    def new
    end
    
    def create
        user= User.new
        user.first_name= params[:first_name]
        user.last_name= params[:last_name]
        user.phone= params[:phone]
        user.email= params[:email]
        user.address= params[:address]
        user.city= params[:city]
        user.state= params[:state]
        user.zip= params[:zip]
        user.save
        redirect_to '/users'
        
    end
    
    
    def index
        @users = User.all
    end
    
    def edit
        @user = User.find(params[:id])
    end
    
    def update
        user = User.find(params[:id])
        user.first_name= params[:first_name]
        user.last_name= params[:last_name]
        user.phone= params[:phone]
        user.email= params[:email]
        user.address= params[:address]
        user.city= params[:city]
        user.state= params[:state]
        user.zip= params[:zip]
        user.save
        redirect_to '/users'
      
    end
    
    def delete
        user = User.find(params[:id])
        user.destroy
        redirect_to '/users'
    end
    
    
end
