class MeetingsController < ApplicationController

  def index
    @meetings = Meeting.all
  end

  def show
    @meeting = Meeting.find(params[:id])
  end


  def new
    @meeting = Meeting.new
  end

  def create
    @meeting = Meeting.new(meeting_params)
    @meeting.user = current_user
    if @meeting.save
      redirect_to root_path
    else
      render :new
    end

  end


  private

  def meeting_params
    params.require(:meeting).permit(:title, :description, :date, :local, :nb_max_participant, :profile_wanted)
  end

end
