require_relative 'user_type'

class DisabledPersonHighSchool < UserType
  def set_price
    @weekday_twilight_show = 900
    @weekday_late_show = 900
    @holiday_twilight_show = 900
    @holiday_late_show = 900
    @cinema_day = 900
  end
end