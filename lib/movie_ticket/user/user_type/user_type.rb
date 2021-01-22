class UserType
  attr_reader :weekday_twilight_show, :weekday_late_show, :holiday_twilight_show, :holiday_late_show, :cinema_day

  def initialize
    set_price
  end

  def set_price
    @weekday_twilight_show = nil
    @weekday_late_show = nil
    @holiday_twilight_show = nil
    @holiday_late_show = nil
    @cinema_day = nil
  end
end