class LessonsController < ApplicationController
    
    
    
    def index
        @lessons =Lesson.where(user_id: current_user.id)
    end
    
    
    def new
        @lesson = Lesson.new
    end
     
    def create
        lesson= Lesson.new
        lesson.child_name= params[:child_name]
        lesson.lesson_type= params[:lesson_typr]
        lesson.student_goal= params[:student_goal]
        lesson.start_time= params[:start_time]
        lesson.end_time= params[:end_time]
        lesson.created_at= params[:created_at]
        lesson.save
        redirect_to '/lessons'
        
    end
    
    def submit
    end
      
    
    
end
