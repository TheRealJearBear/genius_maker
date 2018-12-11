class MeetingsController < ApplicationController

  def index
    @meetings = Meeting.all
  end

  def new
    @meeting = Meeting.new
    @user = current_user
  end

  def create
    @meeting = current_user.meetings.create(meeting_params)

    if @meeting.save
      flash[:notice] = "Meeting added successfully"
       redirect_to @meeting
    else
      render "new"
    end
  end

  def show
    @meeting = Meeting.find(params[:id])
  end

  private

  def meeting_params
    params.require(:meeting).permit(:title, :description, :start_time)
  end

end
