class BookingsController < ApplicationController
  before_action :set_booking, only: [:show, :confirm_user]

  def index
  end

  def show
  end

  def new
    @meeting = Meeting.find(params[:meeting_id])
    @booking = Booking.new
  end

  def create
    @meeting = Meeting.find(params[:meeting_id])
    @booking = Booking.new(booking_params)
    @booking.meeting = @meeting
    @booking.user = current_user

    if @booking.save
      redirect_to dashboards_show_path
    else
      render :new
    end
  end

  def confirm_user # mentor can confirm a user
    @booking.confirmation = true
    @booking.save
    meeting = @booking.meeting
    redirect_to meeting_path(meeting)
  end


private

  def set_booking
    @booking = Booking.find(params[:id])
  end

  def booking_params
    params.require(:booking).permit(:motivations)
  end

end
