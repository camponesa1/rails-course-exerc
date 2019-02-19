class StudentsController < ApplicationController
    
    before_action :authenticate_student!
    
    def index
        
    end
    
    def show
        
    end
    
    def new
        @student = Student.new
    end
    
    def create
        @student = Student.new
        @student.first_name = params[:student][:first_name]
        @student.last_name = params[:student][:last_name]
        @student.phone = params[:student][:phone]
        @student.email = params[:student][:email]
        @student.password = params[:student][:password]
        @student.save
        redirect_to '/index'
    end
    
    def edit
        @student = Student.find(params[:id])
    end
    
    
    def update
        @student = Student.find(params[:id])
        @student.first_name = params[:student][:first_name]
        @student.last_name = params[:student][:last_name]
        @student.phone = params[:student][:phone]
        @student.email = params[:student][:email]
        @student.password = params[:student][:password]
        @student.save
        redirect_to '/index'
        
    end
    
    def delete
    end
    
    
end
