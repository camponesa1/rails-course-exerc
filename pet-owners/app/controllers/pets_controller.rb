class PetsController < ApplicationController
    
    def new
        @owners = Owner.all
    end
    
    def create
        pet= Pet.new
        pet.name= params[:name]
        pet.description= params[:description]
        pet.owner_id = params[:owner_id]
        pet.save
        redirect_to '/pets' 
    end
    
    def index
        @pets = Pet.all
    end
    
    def edit
        @pet = Pet.find(params[:id])
    end
    
    def update
         pet = Pet.find(params[:id])
         pet.name= params[:name]
         pet.description= params[:description]
         pet.save
        redirect_to '/pets'
    end
    
    def delete
    end
end
