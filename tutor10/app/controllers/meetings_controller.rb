class MeetingsController < ApplicationController
    
    #before_action :authenticate_user!

   def index
       current_user.id
       @meetings = Meeting.where(user_id: current_user.id)
   end
  
  def show
  end

 
  def new
    @meeting = Meeting.new
  end

  
  def edit
  end

  # POST /meetings
  
  def create
    @meeting = Meeting.new(meeting_params)

    respond_to do |format|
      if @meeting.save
        format.html { redirect_to @meeting, notice: 'Meeting was successfully created.' }
        
      else
        format.html { render :new }
        
      end
    end
  end

  # PATCH/PUT /meetings/1
 
  def update
    respond_to do |format|
      if @meeting.update(meeting_params)
        format.html { redirect_to @meeting, notice: 'Meeting was successfully updated.' }
        
      else
        format.html { render :edit }
        
      end
    end
  end

  # DELETE /meetings/1
 
  def destroy
    @meeting.destroy
    respond_to do |format|
      format.html { redirect_to meetings_url, notice: 'Meeting was successfully destroyed.' }
      
    end
  end
  
  def submit
      
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_meeting
      @meeting = Meeting.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def meeting_params
      params.require(:meeting).permit(:student_name, :lesson_type, :student_goal, :start_time, :created_at, :status)
    end
end

