class LessonsController < ApplicationController
    before_action :authenticate_student!
    
    def index
        @lessons = Lesson.all
    end
    
    def show
        @lessons = Lesson.all
    
    end
    
    def new
        @lesson= Lesson.new
    end
    
    def create
        @lesson = Lesson.new
        @lesson.lesson_level = params[:lesson][:lesson_level]
        @lesson.student_goal = params[:lesson][:student_goal]
        @lesson.date = params[:lesson][:date]
        @lesson.start_time = params[:lesson][:start_time]
        @lesson.end_time = params[:lesson][:end_time]
        @lesson.status = 'submitted'
        @lesson.save
        redirect_to '/lessons/:id(.:format)'
    end
    
    def edit
        @lesson = Lesson.find(params[:id])
    end
    
    
    def update
        @lesson = Lesson.find(params[:id])
        @lesson.lesson_level = params[:lesson][:lesson_level]
        @lesson.student_goal = params[:lesson][:student_goal]
        @lesson.start_time = params[:lesson][:start_time]
        @lesson.date = params[:lesson][:date]
        @lesson.end_time = params[:lesson][:end_time]
        @lesson.save
        redirect_to lesson_path
    end
    
   
    def delete
        @lesson = Lesson.find(params[:id])
        
        @lesson.destroy
         redirect_to '/lessons/:id(.:format)'
         
       
    end
    
end
