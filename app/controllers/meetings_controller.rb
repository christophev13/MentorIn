class MeetingsController < ApplicationController

  def index
    @meetings = Meeting.all
    if params[:search]
      @meetings = Meeting.search(params[:search]).order("date ASC").where('date >= ?', Time.now)
    else
      @meetings = Meeting.all.order('date ASC').where('date >= ?', Time.now)
    end
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
      redirect_to meetings_path
    else
      render :new
    end

  end


  private

  def meeting_params
    params.require(:meeting).permit(:title, :description, :date, :local, :nb_max_participant, :profile_wanted)
  end

end
