class MeetingsController < ApplicationController
  before_action :set_meeting, only: [:show, :edit, :update]

  def index
    @meetings = Meeting.all
  end

  def show
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

  def edit
  end

  def update
    @meeting.update_attributes(meeting_params)
    redirect_to meeting_path(@meeting)
  end

  private

  def meeting_params
    params.require(:meeting).permit(:title, :description, :date, :local, :nb_max_participant, :profile_wanted)
  end

  def set_meeting
    @meeting = Meeting.find(params[:id])
  end

end
