class UserType
  attr_reader :weekday_twilight_show, :weekday_late_show, :holiday_twilight_show, :holiday_late_show, :cinema_day

  def initialize
    set_price
  end

  def set_price
    @weekday_twilight_show = 0
    @weekday_late_show = 0
    @holiday_twilight_show = 0
    @holiday_late_show = 0
    @cinema_day = 0
  end
end