class CinemaCitizen
  attr_accessor :weekday_twilight_show, :weekday_late_show, :holiday_twilight_show, :holiday_late_show, :cinema_day, :weekday_cinema_day

  def initialize
    set_price
  end

  def set_price
    @weekday_twilight_show = 1000
    @weekday_late_show = 1000

    @holiday_twilight_show = 1300
    @holiday_late_show = 1000

    @cinema_day = 1100
    @weekday_cinema_day = 1000
  end
end