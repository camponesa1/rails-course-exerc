class UsersController < ApplicationController

    
    def index
    end
    
    def new
        @user= User.new
    end
    
    def create
        user= User.new
        user.first_name= params[:first_name]
        user.last_name= params[:last_name]
        user.phone= params[:phone]
        user.email= params[:email]
        user.credit_info= params[:credit_info]
        user.encrypted_password= params[:encrypted_password]
        user.save
        redirect_to '/users'
        
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
        user.credit_info= params[:credit_info]
        user.encrypted_password= params[:encrypted_password]
        user.save
        redirect_to '/users'
      
    end
end
