require_relative 'user_type'

class Birthday < UserType
  def set_price
    @weekday_twilight_show = 500
    @weekday_late_show = 500
    @holiday_twilight_show = 500
    @holiday_late_show = 500
    @cinema_day = 500
    @weekday_cinema_day = 500
  end
end