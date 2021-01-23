require_relative "user_type"

class Senior < UserType
  def set_price
    @weekday_twilight_show = 1100
    @weekday_late_show = 1100
    @holiday_twilight_show = 1100
    @holiday_late_show = 1100
    @cinema_day = 1100
  end
end