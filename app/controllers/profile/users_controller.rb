class Profile::UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @meetings = @user.meetings.where('date >= ?', Time.now)
  end


end
