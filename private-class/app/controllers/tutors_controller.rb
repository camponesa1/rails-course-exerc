class TutorsController < ApplicationController

    def new
    end
    
    def create
        tutor= Tutor.new
        tutor.first_name= params[:first_name]
        tutor.last_name= params[:last_name]
        tutor.phone= params[:phone]
        tutor.email= params[:email]
        tutor.encrypted_password= params[:encrypted_password]
        tutor.save
        redirect_to '/tutors'
        
    end
    
    def edit
        @tutor = Tutor.find(params[:id])
    end
    
    def update
        tutor= Tutor.find(params[:id])
        tutor.first_name= params[:first_name]
        tutor.last_name= params[:last_name]
        tutor.phone= params[:phone]
        tutor.email= params[:email]
        tutor.encrypted_password= params[:encrypted_password]
        tutor.save
        redirect_to '/tutors'
      
    end
    
end
