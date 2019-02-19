class TeacherLessonsController < ApplicationController
    
    def index
        # submitted, scheduled, given, rescheduled
        @lessons = Lesson.where(status: ['submitted', 'scheduled', 'given'])
    end
    
    def schedule
        @lesson = Lesson.find(params[:id])
        @lesson.status = 'scheduled'
        @order.save
        redirect_to teacher_lessons_path
    end
    
    def given
        @lesson = Lesson.find(params[:id])
        @lesson.status = 'given'
        @lesson.save
        redirect_to teacher_lessons_path
    end
    
    
    
end
