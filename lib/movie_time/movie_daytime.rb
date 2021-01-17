require 'holiday_japan'

class MovieDaytime
  attr_accessor :day_type, :time_type

  def initialize(movie_daytime)
    movie_daytime_obj = DateTime.parse(movie_daytime)
    @day_type = day_type_check(movie_daytime_obj)
    @time_type = time_type_check(movie_daytime_obj)
  end

  # 平日・土日祝日・映画の日のチェック
  def day_type_check(movie_daytime)
    if movie_daytime.day == 1
      'movie_day'
    elsif HolidayJapan.check(movie_daytime.to_date) || movie_daytime.sunday? || movie_daytime.saturday?
      'holiday'
    else
      'weekday'
    end
  end

  # 時間枠のチェック
  def time_type_check(movie_daytime)
    if movie_daytime.strftime('%H:%M:%S') < '20:00:00'
      'twilight_show'
    else
      'late_show'
    end
  end
end