module DashboardsHelper

  def mentee_message                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          (meeting)
    mentee_confirmed = meeting.booking.reduce(0){|counter, item| counter += (item.confirmation == true ? 1 : 0)}
    mentee_pending = meeting.booking.reduce(0){|counter, item| counter += (item.confirmation == true ? 0 : 1)}
    if mentee_confirmed < meeting.nb_max_participant
      "Mentees: #{mentee_confirmed} confirmed / #{mentee_pending} pending"
    else
      "Max number of participants reached"
    end

  end
end
