module DashboardsHelper

  def mentee_confirmed(meeting)
    meeting.booking.reduce(0){|counter, item| counter += (item.confirmation == true ? 1 : 0)}
  end

  def mentee_pending(meeting)
    meeting.booking.reduce(0){|counter, item| counter += (item.confirmation == true ? 0 : 1)}
  end

end
