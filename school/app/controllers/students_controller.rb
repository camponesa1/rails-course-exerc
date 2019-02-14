class StudentsController < ApplicationController
    
     #CRUD (Create,read,update,destroy)
    
    #send back to create
    def new
        @courses = Course.all
    end
    
    #create a student
    def create
        student = Student.new
        student.first_name = params[:first_name]
        student.last_name =params[:last_name]
        student.picture = params[:picture]
        student.course_id = params[:course_id]
        student.save
        redirect_to '/students'
    end
    
   #list all student 
    def index
        @students = Student.all
    end
    
   #send back form to edit 
    def edit
    end
    
    #update student
    def update
    end
    
    #destroy a student
    def delete
    end
end
