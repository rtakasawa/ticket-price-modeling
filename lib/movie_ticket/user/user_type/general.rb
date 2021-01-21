require_relative 'user_type'

class General < UserType
  def set_price
    @weekday_twilight_show = 1800
    @weekday_late_show = 1300
    @holiday_twilight_show = 1800
    @holiday_late_show = 1300
    @cinema_day = 1100
  end
end