class MeetingsController < ApplicationController
  before_action :set_meeting, only: [:show, :edit, :update, :destroy]

  def index
    @meetings = Meeting.all
    if params[:search]
      @meetings = Meeting.search(params[:search]).order("date ASC").where('date >= ?', Time.now)
    else
      @meetings = Meeting.all.order('date ASC').where('date >= ?', Time.now)
    end
  end

  def show
    @user = current_user
    @mentor = @meeting.user
    @user == @mentor ? @show_mentees = true : @show_mentees = false
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

  def edit
  end

  def update
    @meeting.update_attributes(meeting_params)
    redirect_to meeting_path(@meeting)
  end

  def destroy
    @meeting.destroy
    redirect_to dashboards_show_path
  end

  private

  def meeting_params
    params.require(:meeting).permit(:title, :description, :date, :local, :nb_max_participant, :profile_wanted)
  end

  def set_meeting
    @meeting = Meeting.find(params[:id])
  end

end
