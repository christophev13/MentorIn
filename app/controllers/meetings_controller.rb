class MeetingsController < ApplicationController
  before_action :set_user, only: [:create]

  #def index
  #  @meetings = Meeting.all
  #send

  def new
    @meeting = Meeting.new
  end




  private

  def meeting_params
    params.require(:meeting).permit(:title, :description, :date, :local, :nb_max_participant)
  end

  def set_user
    @user = User.find(params[:user_id])
  end

end
