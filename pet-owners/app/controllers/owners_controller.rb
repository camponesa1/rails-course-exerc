class OwnersController < ApplicationController
    def new
    end
    
    def create
        owner= Owner.new
        owner.first_name= params[:first_name]
        owner.last_name= params[:last_name]
        owner.save
        redirect_to '/owners' 
    end
    
    def index
        @owners = Owner.all
    end
    
    def edit
        @owner = Owner.find(params[:id])
    end
    
    def update
        owner = Owner.find(params[:id])
        owner.first_name= params[:first_name]
        owner.last_name= params[:last_name]
        owner.save
        redirect_to '/owners'
    end
    
    def delete
        owner = Owner.find(params[:id])
        owner.destroy
        redirect_to '/owners'
    end
    
    def show
        @owner = Owner.find(params[:id])
    end
    
end
