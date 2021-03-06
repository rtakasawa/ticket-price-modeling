require_relative "user_type"

class CinemaCitizen < UserType
  attr_reader :weekday_cinema_day

  def set_price
    @weekday_twilight_show = 1000
    @weekday_late_show = 1000
    @holiday_twilight_show = 1300
    @holiday_late_show = 1000
    @cinema_day = 1100
    @weekday_cinema_day = 1000
  end
end