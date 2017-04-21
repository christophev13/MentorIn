class DashboardsController < ApplicationController
  def show
    @user = current_user

    @nb_meeting_mentor = @user.meetings.count
    @nb_meeting_mentee = @user.booking.count
  end
end
