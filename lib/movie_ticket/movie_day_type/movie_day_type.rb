require "holiday_japan"

# 映画の日時情報
class MovieDayType
  attr_reader :day_type, :cinema_day

  def initialize(movie_day)
    movie_day_obj = Date.parse(movie_day)
    @day_type = day_type_check(movie_day_obj)
    @cinema_day = cinema_day_check(movie_day_obj)
  end

  HOLIDAY = "holiday"
  WEEKDAY = "weekday"
  HOLIDAY.freeze
  WEEKDAY.freeze

  # 平日・土日祝日のチェック
  def day_type_check(movie_day)
    if HolidayJapan.check(movie_day.to_date) || movie_day.sunday? || movie_day.saturday?
      HOLIDAY
    else
      WEEKDAY
    end
  end

  # 映画の日のチェック
  def cinema_day_check(movie_day)
    if movie_day.day == 1
      true
    else
      false
    end
  end
end