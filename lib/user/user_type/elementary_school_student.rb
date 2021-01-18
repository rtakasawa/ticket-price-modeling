require_relative 'user_type'

class UniversityStudent < UserType
  def set_price
    @weekday_twilight_show = 1500
    @weekday_late_show = 1300
    @holiday_twilight_show = 1500
    @holiday_late_show = 1300
    @cinema_day = 1100
  end
end